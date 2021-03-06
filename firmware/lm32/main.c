#include <stdio.h>
#include <stdlib.h>

#include <irq.h>
#include <uart.h>
#include <time.h>
#include <generated/csr.h>
#include <generated/mem.h>
#include <hw/flags.h>
#include <console.h>

#include "config.h"
#include "ci.h"
#include "processor.h"
#include "encoder.h"
#include "pattern.h"

int main(void)
{
	irq_setmask(0);
	irq_setie(1);
	uart_init();

	puts("\nHDMI2USB firmware  http://timvideos.us/");
	printf("Board's DNA: %016x\n", dna_id_read());
	printf("Revision %08x built "__DATE__" "__TIME__"\n", MSC_GIT_ID);

	ci_prompt();
	config_init();
	time_init();
	processor_init();
	processor_start(config_get(CONFIG_KEY_RESOLUTION));
	while(1) {
		processor_service();
		ci_service();
/* XXX FIX DDR conflict between DMA and L2 cache */
#if 0
		pattern_service();
#endif
	}

	return 0;
}
