-- File: HeaderRam.vhd
-- Generated by MyHDL 0.9dev
-- Date: Mon Dec  8 22:46:57 2014


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_09.all;

entity HeaderRam is
    port (
        d: in std_logic_vector(7 downto 0);
        waddr: in std_logic_vector(9 downto 0);
        raddr: in std_logic_vector(9 downto 0);
        we: in std_logic;
        clk: in std_logic;
        q: out std_logic_vector(7 downto 0)
    );
end entity HeaderRam;


architecture MyHDL of HeaderRam is





signal use_ram: std_logic;
signal read_addr: unsigned(9 downto 0);
type t_array_mem is array(0 to 1024-1) of unsigned(7 downto 0);
signal mem: t_array_mem;

begin




HEADERRAM_RTL: process (clk) is
begin
    if rising_edge(clk) then
        if bool(we) then
            use_ram <= '1';
            mem(to_integer(unsigned(waddr))) <= unsigned(d);
        end if;
        read_addr <= unsigned(raddr);
    end if;
end process HEADERRAM_RTL;


HEADERRAM_RTL_OUT: process (mem(0), mem(1), mem(2), mem(3), mem(4), mem(5), mem(6), mem(7), mem(8), mem(9), mem(10), mem(11), mem(12), mem(13), mem(14), mem(15), mem(16), mem(17), mem(18), mem(19), mem(20), mem(21), mem(22), mem(23), mem(24), mem(25), mem(26), mem(27), mem(28), mem(29), mem(30), mem(31), mem(32), mem(33), mem(34), mem(35), mem(36), mem(37), mem(38), mem(39), mem(40), mem(41), mem(42), mem(43), mem(44), mem(45), mem(46), mem(47), mem(48), mem(49), mem(50), mem(51), mem(52), mem(53), mem(54), mem(55), mem(56), mem(57), mem(58), mem(59), mem(60), mem(61), mem(62), mem(63), mem(64), mem(65), mem(66), mem(67), mem(68), mem(69), mem(70), mem(71), mem(72), mem(73), mem(74), mem(75), mem(76), mem(77), mem(78), mem(79), mem(80), mem(81), mem(82), mem(83), mem(84), mem(85), mem(86), mem(87), mem(88), mem(89), mem(90), mem(91), mem(92), mem(93), mem(94), mem(95), mem(96), mem(97), mem(98), mem(99), mem(100), mem(101), mem(102), mem(103), mem(104), mem(105), mem(106), mem(107), mem(108), mem(109), mem(110), mem(111), mem(112), mem(113), mem(114), mem(115), mem(116), mem(117), mem(118), mem(119), mem(120), mem(121), mem(122), mem(123), mem(124), mem(125), mem(126), mem(127), mem(128), mem(129), mem(130), mem(131), mem(132), mem(133), mem(134), mem(135), mem(136), mem(137), mem(138), mem(139), mem(140), mem(141), mem(142), mem(143), mem(144), mem(145), mem(146), mem(147), mem(148), mem(149), mem(150), mem(151), mem(152), mem(153), mem(154), mem(155), mem(156), mem(157), mem(158), mem(159), mem(160), mem(161), mem(162), mem(163), mem(164), mem(165), mem(166), mem(167), mem(168), mem(169), mem(170), mem(171), mem(172), mem(173), mem(174), mem(175), mem(176), mem(177), mem(178), mem(179), mem(180), mem(181), mem(182), mem(183), mem(184), mem(185), mem(186), mem(187), mem(188), mem(189), mem(190), mem(191), mem(192), mem(193), mem(194), mem(195), mem(196), mem(197), mem(198), mem(199), mem(200), mem(201), mem(202), mem(203), mem(204), mem(205), mem(206), mem(207), mem(208), mem(209), mem(210), mem(211), mem(212), mem(213), mem(214), mem(215), mem(216), mem(217), mem(218), mem(219), mem(220), mem(221), mem(222), mem(223), mem(224), mem(225), mem(226), mem(227), mem(228), mem(229), mem(230), mem(231), mem(232), mem(233), mem(234), mem(235), mem(236), mem(237), mem(238), mem(239), mem(240), mem(241), mem(242), mem(243), mem(244), mem(245), mem(246), mem(247), mem(248), mem(249), mem(250), mem(251), mem(252), mem(253), mem(254), mem(255), mem(256), mem(257), mem(258), mem(259), mem(260), mem(261), mem(262), mem(263), mem(264), mem(265), mem(266), mem(267), mem(268), mem(269), mem(270), mem(271), mem(272), mem(273), mem(274), mem(275), mem(276), mem(277), mem(278), mem(279), mem(280), mem(281), mem(282), mem(283), mem(284), mem(285), mem(286), mem(287), mem(288), mem(289), mem(290), mem(291), mem(292), mem(293), mem(294), mem(295), mem(296), mem(297), mem(298), mem(299), mem(300), mem(301), mem(302), mem(303), mem(304), mem(305), mem(306), mem(307), mem(308), mem(309), mem(310), mem(311), mem(312), mem(313), mem(314), mem(315), mem(316), mem(317), mem(318), mem(319), mem(320), mem(321), mem(322), mem(323), mem(324), mem(325), mem(326), mem(327), mem(328), mem(329), mem(330), mem(331), mem(332), mem(333), mem(334), mem(335), mem(336), mem(337), mem(338), mem(339), mem(340), mem(341), mem(342), mem(343), mem(344), mem(345), mem(346), mem(347), mem(348), mem(349), mem(350), mem(351), mem(352), mem(353), mem(354), mem(355), mem(356), mem(357), mem(358), mem(359), mem(360), mem(361), mem(362), mem(363), mem(364), mem(365), mem(366), mem(367), mem(368), mem(369), mem(370), mem(371), mem(372), mem(373), mem(374), mem(375), mem(376), mem(377), mem(378), mem(379), mem(380), mem(381), mem(382), mem(383), mem(384), mem(385), mem(386), mem(387), mem(388), mem(389), mem(390), mem(391), mem(392), mem(393), mem(394), mem(395), mem(396), mem(397), mem(398), mem(399), mem(400), mem(401), mem(402), mem(403), mem(404), mem(405), mem(406), mem(407), mem(408), mem(409), mem(410), mem(411), mem(412), mem(413), mem(414), mem(415), mem(416), mem(417), mem(418), mem(419), mem(420), mem(421), mem(422), mem(423), mem(424), mem(425), mem(426), mem(427), mem(428), mem(429), mem(430), mem(431), mem(432), mem(433), mem(434), mem(435), mem(436), mem(437), mem(438), mem(439), mem(440), mem(441), mem(442), mem(443), mem(444), mem(445), mem(446), mem(447), mem(448), mem(449), mem(450), mem(451), mem(452), mem(453), mem(454), mem(455), mem(456), mem(457), mem(458), mem(459), mem(460), mem(461), mem(462), mem(463), mem(464), mem(465), mem(466), mem(467), mem(468), mem(469), mem(470), mem(471), mem(472), mem(473), mem(474), mem(475), mem(476), mem(477), mem(478), mem(479), mem(480), mem(481), mem(482), mem(483), mem(484), mem(485), mem(486), mem(487), mem(488), mem(489), mem(490), mem(491), mem(492), mem(493), mem(494), mem(495), mem(496), mem(497), mem(498), mem(499), mem(500), mem(501), mem(502), mem(503), mem(504), mem(505), mem(506), mem(507), mem(508), mem(509), mem(510), mem(511), mem(512), mem(513), mem(514), mem(515), mem(516), mem(517), mem(518), mem(519), mem(520), mem(521), mem(522), mem(523), mem(524), mem(525), mem(526), mem(527), mem(528), mem(529), mem(530), mem(531), mem(532), mem(533), mem(534), mem(535), mem(536), mem(537), mem(538), mem(539), mem(540), mem(541), mem(542), mem(543), mem(544), mem(545), mem(546), mem(547), mem(548), mem(549), mem(550), mem(551), mem(552), mem(553), mem(554), mem(555), mem(556), mem(557), mem(558), mem(559), mem(560), mem(561), mem(562), mem(563), mem(564), mem(565), mem(566), mem(567), mem(568), mem(569), mem(570), mem(571), mem(572), mem(573), mem(574), mem(575), mem(576), mem(577), mem(578), mem(579), mem(580), mem(581), mem(582), mem(583), mem(584), mem(585), mem(586), mem(587), mem(588), mem(589), mem(590), mem(591), mem(592), mem(593), mem(594), mem(595), mem(596), mem(597), mem(598), mem(599), mem(600), mem(601), mem(602), mem(603), mem(604), mem(605), mem(606), mem(607), mem(608), mem(609), mem(610), mem(611), mem(612), mem(613), mem(614), mem(615), mem(616), mem(617), mem(618), mem(619), mem(620), mem(621), mem(622), mem(623), mem(624), mem(625), mem(626), mem(627), mem(628), mem(629), mem(630), mem(631), mem(632), mem(633), mem(634), mem(635), mem(636), mem(637), mem(638), mem(639), mem(640), mem(641), mem(642), mem(643), mem(644), mem(645), mem(646), mem(647), mem(648), mem(649), mem(650), mem(651), mem(652), mem(653), mem(654), mem(655), mem(656), mem(657), mem(658), mem(659), mem(660), mem(661), mem(662), mem(663), mem(664), mem(665), mem(666), mem(667), mem(668), mem(669), mem(670), mem(671), mem(672), mem(673), mem(674), mem(675), mem(676), mem(677), mem(678), mem(679), mem(680), mem(681), mem(682), mem(683), mem(684), mem(685), mem(686), mem(687), mem(688), mem(689), mem(690), mem(691), mem(692), mem(693), mem(694), mem(695), mem(696), mem(697), mem(698), mem(699), mem(700), mem(701), mem(702), mem(703), mem(704), mem(705), mem(706), mem(707), mem(708), mem(709), mem(710), mem(711), mem(712), mem(713), mem(714), mem(715), mem(716), mem(717), mem(718), mem(719), mem(720), mem(721), mem(722), mem(723), mem(724), mem(725), mem(726), mem(727), mem(728), mem(729), mem(730), mem(731), mem(732), mem(733), mem(734), mem(735), mem(736), mem(737), mem(738), mem(739), mem(740), mem(741), mem(742), mem(743), mem(744), mem(745), mem(746), mem(747), mem(748), mem(749), mem(750), mem(751), mem(752), mem(753), mem(754), mem(755), mem(756), mem(757), mem(758), mem(759), mem(760), mem(761), mem(762), mem(763), mem(764), mem(765), mem(766), mem(767), mem(768), mem(769), mem(770), mem(771), mem(772), mem(773), mem(774), mem(775), mem(776), mem(777), mem(778), mem(779), mem(780), mem(781), mem(782), mem(783), mem(784), mem(785), mem(786), mem(787), mem(788), mem(789), mem(790), mem(791), mem(792), mem(793), mem(794), mem(795), mem(796), mem(797), mem(798), mem(799), mem(800), mem(801), mem(802), mem(803), mem(804), mem(805), mem(806), mem(807), mem(808), mem(809), mem(810), mem(811), mem(812), mem(813), mem(814), mem(815), mem(816), mem(817), mem(818), mem(819), mem(820), mem(821), mem(822), mem(823), mem(824), mem(825), mem(826), mem(827), mem(828), mem(829), mem(830), mem(831), mem(832), mem(833), mem(834), mem(835), mem(836), mem(837), mem(838), mem(839), mem(840), mem(841), mem(842), mem(843), mem(844), mem(845), mem(846), mem(847), mem(848), mem(849), mem(850), mem(851), mem(852), mem(853), mem(854), mem(855), mem(856), mem(857), mem(858), mem(859), mem(860), mem(861), mem(862), mem(863), mem(864), mem(865), mem(866), mem(867), mem(868), mem(869), mem(870), mem(871), mem(872), mem(873), mem(874), mem(875), mem(876), mem(877), mem(878), mem(879), mem(880), mem(881), mem(882), mem(883), mem(884), mem(885), mem(886), mem(887), mem(888), mem(889), mem(890), mem(891), mem(892), mem(893), mem(894), mem(895), mem(896), mem(897), mem(898), mem(899), mem(900), mem(901), mem(902), mem(903), mem(904), mem(905), mem(906), mem(907), mem(908), mem(909), mem(910), mem(911), mem(912), mem(913), mem(914), mem(915), mem(916), mem(917), mem(918), mem(919), mem(920), mem(921), mem(922), mem(923), mem(924), mem(925), mem(926), mem(927), mem(928), mem(929), mem(930), mem(931), mem(932), mem(933), mem(934), mem(935), mem(936), mem(937), mem(938), mem(939), mem(940), mem(941), mem(942), mem(943), mem(944), mem(945), mem(946), mem(947), mem(948), mem(949), mem(950), mem(951), mem(952), mem(953), mem(954), mem(955), mem(956), mem(957), mem(958), mem(959), mem(960), mem(961), mem(962), mem(963), mem(964), mem(965), mem(966), mem(967), mem(968), mem(969), mem(970), mem(971), mem(972), mem(973), mem(974), mem(975), mem(976), mem(977), mem(978), mem(979), mem(980), mem(981), mem(982), mem(983), mem(984), mem(985), mem(986), mem(987), mem(988), mem(989), mem(990), mem(991), mem(992), mem(993), mem(994), mem(995), mem(996), mem(997), mem(998), mem(999), mem(1000), mem(1001), mem(1002), mem(1003), mem(1004), mem(1005), mem(1006), mem(1007), mem(1008), mem(1009), mem(1010), mem(1011), mem(1012), mem(1013), mem(1014), mem(1015), mem(1016), mem(1017), mem(1018), mem(1019), mem(1020), mem(1021), mem(1022), mem(1023), read_addr, use_ram) is
begin
    if bool(use_ram) then
        q <= std_logic_vector(mem(to_integer(read_addr)));
    else
        case to_integer(read_addr) is
            when 0 => q <= "11111111";
            when 1 => q <= "11011000";
            when 2 => q <= "11111111";
            when 3 => q <= "11100000";
            when 4 => q <= "00000000";
            when 5 => q <= "00010000";
            when 6 => q <= "01001010";
            when 7 => q <= "01000110";
            when 8 => q <= "01001001";
            when 9 => q <= "01000110";
            when 10 => q <= "00000000";
            when 11 => q <= "00000001";
            when 12 => q <= "00000001";
            when 13 => q <= "00000000";
            when 14 => q <= "00000000";
            when 15 => q <= "00000001";
            when 16 => q <= "00000000";
            when 17 => q <= "00000001";
            when 18 => q <= "00000000";
            when 19 => q <= "00000000";
            when 20 => q <= "11111111";
            when 21 => q <= "11000000";
            when 22 => q <= "00000000";
            when 23 => q <= "00010001";
            when 24 => q <= "00001000";
            when 25 => q <= "00000001";
            when 26 => q <= "00100000";
            when 27 => q <= "00000001";
            when 28 => q <= "01100000";
            when 29 => q <= "00000011";
            when 30 => q <= "00000001";
            when 31 => q <= "00100001";
            when 32 => q <= "00000000";
            when 33 => q <= "00000010";
            when 34 => q <= "00010001";
            when 35 => q <= "00000001";
            when 36 => q <= "00000011";
            when 37 => q <= "00010001";
            when 38 => q <= "00000001";
            when 39 => q <= "11111111";
            when 40 => q <= "11011011";
            when 41 => q <= "00000000";
            when 42 => q <= "01000011";
            when 43 => q <= "00000000";
            when 44 => q <= "00000001";
            when 45 => q <= "00000001";
            when 46 => q <= "00000001";
            when 47 => q <= "00000001";
            when 48 => q <= "00000001";
            when 49 => q <= "00000001";
            when 50 => q <= "00000001";
            when 51 => q <= "00000001";
            when 52 => q <= "00000001";
            when 53 => q <= "00000001";
            when 54 => q <= "00000001";
            when 55 => q <= "00000001";
            when 56 => q <= "00000001";
            when 57 => q <= "00000001";
            when 58 => q <= "00000001";
            when 59 => q <= "00000001";
            when 60 => q <= "00000001";
            when 61 => q <= "00000001";
            when 62 => q <= "00000001";
            when 63 => q <= "00000001";
            when 64 => q <= "00000001";
            when 65 => q <= "00000001";
            when 66 => q <= "00000001";
            when 67 => q <= "00000001";
            when 68 => q <= "00000001";
            when 69 => q <= "00000001";
            when 70 => q <= "00000001";
            when 71 => q <= "00000001";
            when 72 => q <= "00000001";
            when 73 => q <= "00000001";
            when 74 => q <= "00000001";
            when 75 => q <= "00000001";
            when 76 => q <= "00000001";
            when 77 => q <= "00000001";
            when 78 => q <= "00000001";
            when 79 => q <= "00000001";
            when 80 => q <= "00000001";
            when 81 => q <= "00000001";
            when 82 => q <= "00000001";
            when 83 => q <= "00000001";
            when 84 => q <= "00000001";
            when 85 => q <= "00000001";
            when 86 => q <= "00000001";
            when 87 => q <= "00000001";
            when 88 => q <= "00000001";
            when 89 => q <= "00000001";
            when 90 => q <= "00000001";
            when 91 => q <= "00000001";
            when 92 => q <= "00000001";
            when 93 => q <= "00000001";
            when 94 => q <= "00000001";
            when 95 => q <= "00000001";
            when 96 => q <= "00000001";
            when 97 => q <= "00000001";
            when 98 => q <= "00000001";
            when 99 => q <= "00000001";
            when 100 => q <= "00000001";
            when 101 => q <= "00000001";
            when 102 => q <= "00000001";
            when 103 => q <= "00000001";
            when 104 => q <= "00000001";
            when 105 => q <= "00000001";
            when 106 => q <= "00000001";
            when 107 => q <= "00000001";
            when 108 => q <= "11111111";
            when 109 => q <= "11011011";
            when 110 => q <= "00000000";
            when 111 => q <= "01000011";
            when 112 => q <= "00000001";
            when 113 => q <= "00000001";
            when 114 => q <= "00000001";
            when 115 => q <= "00000001";
            when 116 => q <= "00000001";
            when 117 => q <= "00000001";
            when 118 => q <= "00000001";
            when 119 => q <= "00000001";
            when 120 => q <= "00000001";
            when 121 => q <= "00000001";
            when 122 => q <= "00000001";
            when 123 => q <= "00000001";
            when 124 => q <= "00000001";
            when 125 => q <= "00000001";
            when 126 => q <= "00000001";
            when 127 => q <= "00000001";
            when 128 => q <= "00000001";
            when 129 => q <= "00000001";
            when 130 => q <= "00000001";
            when 131 => q <= "00000001";
            when 132 => q <= "00000001";
            when 133 => q <= "00000001";
            when 134 => q <= "00000001";
            when 135 => q <= "00000001";
            when 136 => q <= "00000001";
            when 137 => q <= "00000001";
            when 138 => q <= "00000001";
            when 139 => q <= "00000001";
            when 140 => q <= "00000001";
            when 141 => q <= "00000001";
            when 142 => q <= "00000001";
            when 143 => q <= "00000001";
            when 144 => q <= "00000001";
            when 145 => q <= "00000001";
            when 146 => q <= "00000001";
            when 147 => q <= "00000001";
            when 148 => q <= "00000001";
            when 149 => q <= "00000001";
            when 150 => q <= "00000001";
            when 151 => q <= "00000001";
            when 152 => q <= "00000001";
            when 153 => q <= "00000001";
            when 154 => q <= "00000001";
            when 155 => q <= "00000001";
            when 156 => q <= "00000001";
            when 157 => q <= "00000001";
            when 158 => q <= "00000001";
            when 159 => q <= "00000001";
            when 160 => q <= "00000001";
            when 161 => q <= "00000001";
            when 162 => q <= "00000001";
            when 163 => q <= "00000001";
            when 164 => q <= "00000001";
            when 165 => q <= "00000001";
            when 166 => q <= "00000001";
            when 167 => q <= "00000001";
            when 168 => q <= "00000001";
            when 169 => q <= "00000001";
            when 170 => q <= "00000001";
            when 171 => q <= "00000001";
            when 172 => q <= "00000001";
            when 173 => q <= "00000001";
            when 174 => q <= "00000001";
            when 175 => q <= "00000001";
            when 176 => q <= "00000001";
            when 177 => q <= "11111111";
            when 178 => q <= "11000100";
            when 179 => q <= "00000000";
            when 180 => q <= "00011111";
            when 181 => q <= "00000000";
            when 182 => q <= "00000000";
            when 183 => q <= "00000001";
            when 184 => q <= "00000101";
            when 185 => q <= "00000001";
            when 186 => q <= "00000001";
            when 187 => q <= "00000001";
            when 188 => q <= "00000001";
            when 189 => q <= "00000001";
            when 190 => q <= "00000001";
            when 191 => q <= "00000000";
            when 192 => q <= "00000000";
            when 193 => q <= "00000000";
            when 194 => q <= "00000000";
            when 195 => q <= "00000000";
            when 196 => q <= "00000000";
            when 197 => q <= "00000000";
            when 198 => q <= "00000000";
            when 199 => q <= "00000001";
            when 200 => q <= "00000010";
            when 201 => q <= "00000011";
            when 202 => q <= "00000100";
            when 203 => q <= "00000101";
            when 204 => q <= "00000110";
            when 205 => q <= "00000111";
            when 206 => q <= "00001000";
            when 207 => q <= "00001001";
            when 208 => q <= "00001010";
            when 209 => q <= "00001011";
            when 210 => q <= "11111111";
            when 211 => q <= "11000100";
            when 212 => q <= "00000000";
            when 213 => q <= "00011111";
            when 214 => q <= "00000001";
            when 215 => q <= "00000000";
            when 216 => q <= "00000011";
            when 217 => q <= "00000001";
            when 218 => q <= "00000001";
            when 219 => q <= "00000001";
            when 220 => q <= "00000001";
            when 221 => q <= "00000001";
            when 222 => q <= "00000001";
            when 223 => q <= "00000001";
            when 224 => q <= "00000001";
            when 225 => q <= "00000001";
            when 226 => q <= "00000000";
            when 227 => q <= "00000000";
            when 228 => q <= "00000000";
            when 229 => q <= "00000000";
            when 230 => q <= "00000000";
            when 231 => q <= "00000000";
            when 232 => q <= "00000001";
            when 233 => q <= "00000010";
            when 234 => q <= "00000011";
            when 235 => q <= "00000100";
            when 236 => q <= "00000101";
            when 237 => q <= "00000110";
            when 238 => q <= "00000111";
            when 239 => q <= "00001000";
            when 240 => q <= "00001001";
            when 241 => q <= "00001010";
            when 242 => q <= "00001011";
            when 243 => q <= "11111111";
            when 244 => q <= "11000100";
            when 245 => q <= "00000000";
            when 246 => q <= "10110101";
            when 247 => q <= "00010000";
            when 248 => q <= "00000000";
            when 249 => q <= "00000010";
            when 250 => q <= "00000001";
            when 251 => q <= "00000011";
            when 252 => q <= "00000011";
            when 253 => q <= "00000010";
            when 254 => q <= "00000100";
            when 255 => q <= "00000011";
            when 256 => q <= "00000101";
            when 257 => q <= "00000101";
            when 258 => q <= "00000100";
            when 259 => q <= "00000100";
            when 260 => q <= "00000000";
            when 261 => q <= "00000000";
            when 262 => q <= "00000001";
            when 263 => q <= "01111101";
            when 264 => q <= "00000001";
            when 265 => q <= "00000010";
            when 266 => q <= "00000011";
            when 267 => q <= "00000000";
            when 268 => q <= "00000100";
            when 269 => q <= "00010001";
            when 270 => q <= "00000101";
            when 271 => q <= "00010010";
            when 272 => q <= "00100001";
            when 273 => q <= "00110001";
            when 274 => q <= "01000001";
            when 275 => q <= "00000110";
            when 276 => q <= "00010011";
            when 277 => q <= "01010001";
            when 278 => q <= "01100001";
            when 279 => q <= "00000111";
            when 280 => q <= "00100010";
            when 281 => q <= "01110001";
            when 282 => q <= "00010100";
            when 283 => q <= "00110010";
            when 284 => q <= "10000001";
            when 285 => q <= "10010001";
            when 286 => q <= "10100001";
            when 287 => q <= "00001000";
            when 288 => q <= "00100011";
            when 289 => q <= "01000010";
            when 290 => q <= "10110001";
            when 291 => q <= "11000001";
            when 292 => q <= "00010101";
            when 293 => q <= "01010010";
            when 294 => q <= "11010001";
            when 295 => q <= "11110000";
            when 296 => q <= "00100100";
            when 297 => q <= "00110011";
            when 298 => q <= "01100010";
            when 299 => q <= "01110010";
            when 300 => q <= "10000010";
            when 301 => q <= "00001001";
            when 302 => q <= "00001010";
            when 303 => q <= "00010110";
            when 304 => q <= "00010111";
            when 305 => q <= "00011000";
            when 306 => q <= "00011001";
            when 307 => q <= "00011010";
            when 308 => q <= "00100101";
            when 309 => q <= "00100110";
            when 310 => q <= "00100111";
            when 311 => q <= "00101000";
            when 312 => q <= "00101001";
            when 313 => q <= "00101010";
            when 314 => q <= "00110100";
            when 315 => q <= "00110101";
            when 316 => q <= "00110110";
            when 317 => q <= "00110111";
            when 318 => q <= "00111000";
            when 319 => q <= "00111001";
            when 320 => q <= "00111010";
            when 321 => q <= "01000011";
            when 322 => q <= "01000100";
            when 323 => q <= "01000101";
            when 324 => q <= "01000110";
            when 325 => q <= "01000111";
            when 326 => q <= "01001000";
            when 327 => q <= "01001001";
            when 328 => q <= "01001010";
            when 329 => q <= "01010011";
            when 330 => q <= "01010100";
            when 331 => q <= "01010101";
            when 332 => q <= "01010110";
            when 333 => q <= "01010111";
            when 334 => q <= "01011000";
            when 335 => q <= "01011001";
            when 336 => q <= "01011010";
            when 337 => q <= "01100011";
            when 338 => q <= "01100100";
            when 339 => q <= "01100101";
            when 340 => q <= "01100110";
            when 341 => q <= "01100111";
            when 342 => q <= "01101000";
            when 343 => q <= "01101001";
            when 344 => q <= "01101010";
            when 345 => q <= "01110011";
            when 346 => q <= "01110100";
            when 347 => q <= "01110101";
            when 348 => q <= "01110110";
            when 349 => q <= "01110111";
            when 350 => q <= "01111000";
            when 351 => q <= "01111001";
            when 352 => q <= "01111010";
            when 353 => q <= "10000011";
            when 354 => q <= "10000100";
            when 355 => q <= "10000101";
            when 356 => q <= "10000110";
            when 357 => q <= "10000111";
            when 358 => q <= "10001000";
            when 359 => q <= "10001001";
            when 360 => q <= "10001010";
            when 361 => q <= "10010010";
            when 362 => q <= "10010011";
            when 363 => q <= "10010100";
            when 364 => q <= "10010101";
            when 365 => q <= "10010110";
            when 366 => q <= "10010111";
            when 367 => q <= "10011000";
            when 368 => q <= "10011001";
            when 369 => q <= "10011010";
            when 370 => q <= "10100010";
            when 371 => q <= "10100011";
            when 372 => q <= "10100100";
            when 373 => q <= "10100101";
            when 374 => q <= "10100110";
            when 375 => q <= "10100111";
            when 376 => q <= "10101000";
            when 377 => q <= "10101001";
            when 378 => q <= "10101010";
            when 379 => q <= "10110010";
            when 380 => q <= "10110011";
            when 381 => q <= "10110100";
            when 382 => q <= "10110101";
            when 383 => q <= "10110110";
            when 384 => q <= "10110111";
            when 385 => q <= "10111000";
            when 386 => q <= "10111001";
            when 387 => q <= "10111010";
            when 388 => q <= "11000010";
            when 389 => q <= "11000011";
            when 390 => q <= "11000100";
            when 391 => q <= "11000101";
            when 392 => q <= "11000110";
            when 393 => q <= "11000111";
            when 394 => q <= "11001000";
            when 395 => q <= "11001001";
            when 396 => q <= "11001010";
            when 397 => q <= "11010010";
            when 398 => q <= "11010011";
            when 399 => q <= "11010100";
            when 400 => q <= "11010101";
            when 401 => q <= "11010110";
            when 402 => q <= "11010111";
            when 403 => q <= "11011000";
            when 404 => q <= "11011001";
            when 405 => q <= "11011010";
            when 406 => q <= "11100001";
            when 407 => q <= "11100010";
            when 408 => q <= "11100011";
            when 409 => q <= "11100100";
            when 410 => q <= "11100101";
            when 411 => q <= "11100110";
            when 412 => q <= "11100111";
            when 413 => q <= "11101000";
            when 414 => q <= "11101001";
            when 415 => q <= "11101010";
            when 416 => q <= "11110001";
            when 417 => q <= "11110010";
            when 418 => q <= "11110011";
            when 419 => q <= "11110100";
            when 420 => q <= "11110101";
            when 421 => q <= "11110110";
            when 422 => q <= "11110111";
            when 423 => q <= "11111000";
            when 424 => q <= "11111001";
            when 425 => q <= "11111010";
            when 426 => q <= "11111111";
            when 427 => q <= "11000100";
            when 428 => q <= "00000000";
            when 429 => q <= "10110101";
            when 430 => q <= "00010001";
            when 431 => q <= "00000000";
            when 432 => q <= "00000010";
            when 433 => q <= "00000001";
            when 434 => q <= "00000010";
            when 435 => q <= "00000100";
            when 436 => q <= "00000100";
            when 437 => q <= "00000011";
            when 438 => q <= "00000100";
            when 439 => q <= "00000111";
            when 440 => q <= "00000101";
            when 441 => q <= "00000100";
            when 442 => q <= "00000100";
            when 443 => q <= "00000000";
            when 444 => q <= "00000001";
            when 445 => q <= "00000010";
            when 446 => q <= "01110111";
            when 447 => q <= "00000000";
            when 448 => q <= "00000001";
            when 449 => q <= "00000010";
            when 450 => q <= "00000011";
            when 451 => q <= "00010001";
            when 452 => q <= "00000100";
            when 453 => q <= "00000101";
            when 454 => q <= "00100001";
            when 455 => q <= "00110001";
            when 456 => q <= "00000110";
            when 457 => q <= "00010010";
            when 458 => q <= "01000001";
            when 459 => q <= "01010001";
            when 460 => q <= "00000111";
            when 461 => q <= "01100001";
            when 462 => q <= "01110001";
            when 463 => q <= "00010011";
            when 464 => q <= "00100010";
            when 465 => q <= "00110010";
            when 466 => q <= "10000001";
            when 467 => q <= "00001000";
            when 468 => q <= "00010100";
            when 469 => q <= "01000010";
            when 470 => q <= "10010001";
            when 471 => q <= "10100001";
            when 472 => q <= "10110001";
            when 473 => q <= "11000001";
            when 474 => q <= "00001001";
            when 475 => q <= "00100011";
            when 476 => q <= "00110011";
            when 477 => q <= "01010010";
            when 478 => q <= "11110000";
            when 479 => q <= "00010101";
            when 480 => q <= "01100010";
            when 481 => q <= "01110010";
            when 482 => q <= "11010001";
            when 483 => q <= "00001010";
            when 484 => q <= "00010110";
            when 485 => q <= "00100100";
            when 486 => q <= "00110100";
            when 487 => q <= "11100001";
            when 488 => q <= "00100101";
            when 489 => q <= "11110001";
            when 490 => q <= "00010111";
            when 491 => q <= "00011000";
            when 492 => q <= "00011001";
            when 493 => q <= "00011010";
            when 494 => q <= "00100110";
            when 495 => q <= "00100111";
            when 496 => q <= "00101000";
            when 497 => q <= "00101001";
            when 498 => q <= "00101010";
            when 499 => q <= "00110101";
            when 500 => q <= "00110110";
            when 501 => q <= "00110111";
            when 502 => q <= "00111000";
            when 503 => q <= "00111001";
            when 504 => q <= "00111010";
            when 505 => q <= "01000011";
            when 506 => q <= "01000100";
            when 507 => q <= "01000101";
            when 508 => q <= "01000110";
            when 509 => q <= "01000111";
            when 510 => q <= "01001000";
            when 511 => q <= "01001001";
            when 512 => q <= "01001010";
            when 513 => q <= "01010011";
            when 514 => q <= "01010100";
            when 515 => q <= "01010101";
            when 516 => q <= "01010110";
            when 517 => q <= "01010111";
            when 518 => q <= "01011000";
            when 519 => q <= "01011001";
            when 520 => q <= "01011010";
            when 521 => q <= "01100011";
            when 522 => q <= "01100100";
            when 523 => q <= "01100101";
            when 524 => q <= "01100110";
            when 525 => q <= "01100111";
            when 526 => q <= "01101000";
            when 527 => q <= "01101001";
            when 528 => q <= "01101010";
            when 529 => q <= "01110011";
            when 530 => q <= "01110100";
            when 531 => q <= "01110101";
            when 532 => q <= "01110110";
            when 533 => q <= "01110111";
            when 534 => q <= "01111000";
            when 535 => q <= "01111001";
            when 536 => q <= "01111010";
            when 537 => q <= "10000010";
            when 538 => q <= "10000011";
            when 539 => q <= "10000100";
            when 540 => q <= "10000101";
            when 541 => q <= "10000110";
            when 542 => q <= "10000111";
            when 543 => q <= "10001000";
            when 544 => q <= "10001001";
            when 545 => q <= "10001010";
            when 546 => q <= "10010010";
            when 547 => q <= "10010011";
            when 548 => q <= "10010100";
            when 549 => q <= "10010101";
            when 550 => q <= "10010110";
            when 551 => q <= "10010111";
            when 552 => q <= "10011000";
            when 553 => q <= "10011001";
            when 554 => q <= "10011010";
            when 555 => q <= "10100010";
            when 556 => q <= "10100011";
            when 557 => q <= "10100100";
            when 558 => q <= "10100101";
            when 559 => q <= "10100110";
            when 560 => q <= "10100111";
            when 561 => q <= "10101000";
            when 562 => q <= "10101001";
            when 563 => q <= "10101010";
            when 564 => q <= "10110010";
            when 565 => q <= "10110011";
            when 566 => q <= "10110100";
            when 567 => q <= "10110101";
            when 568 => q <= "10110110";
            when 569 => q <= "10110111";
            when 570 => q <= "10111000";
            when 571 => q <= "10111001";
            when 572 => q <= "10111010";
            when 573 => q <= "11000010";
            when 574 => q <= "11000011";
            when 575 => q <= "11000100";
            when 576 => q <= "11000101";
            when 577 => q <= "11000110";
            when 578 => q <= "11000111";
            when 579 => q <= "11001000";
            when 580 => q <= "11001001";
            when 581 => q <= "11001010";
            when 582 => q <= "11010010";
            when 583 => q <= "11010011";
            when 584 => q <= "11010100";
            when 585 => q <= "11010101";
            when 586 => q <= "11010110";
            when 587 => q <= "11010111";
            when 588 => q <= "11011000";
            when 589 => q <= "11011001";
            when 590 => q <= "11011010";
            when 591 => q <= "11100010";
            when 592 => q <= "11100011";
            when 593 => q <= "11100100";
            when 594 => q <= "11100101";
            when 595 => q <= "11100110";
            when 596 => q <= "11100111";
            when 597 => q <= "11101000";
            when 598 => q <= "11101001";
            when 599 => q <= "11101010";
            when 600 => q <= "11110010";
            when 601 => q <= "11110011";
            when 602 => q <= "11110100";
            when 603 => q <= "11110101";
            when 604 => q <= "11110110";
            when 605 => q <= "11110111";
            when 606 => q <= "11111000";
            when 607 => q <= "11111001";
            when 608 => q <= "11111010";
            when 609 => q <= "11111111";
            when 610 => q <= "11011010";
            when 611 => q <= "00000000";
            when 612 => q <= "00001100";
            when 613 => q <= "00000011";
            when 614 => q <= "00000001";
            when 615 => q <= "00000000";
            when 616 => q <= "00000010";
            when 617 => q <= "00010001";
            when 618 => q <= "00000011";
            when 619 => q <= "00010001";
            when 620 => q <= "00000000";
            when 621 => q <= "00111111";
            when others => q <= "00000000";
        end case;
    end if;
end process HEADERRAM_RTL_OUT;

end architecture MyHDL;