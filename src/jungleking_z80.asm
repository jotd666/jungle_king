

;	map(0x0000, 0x5fff).rom();
;	map(0x6000, 0x7fff).bankr(m_mainbank);
;	map(0x8000, 0x87ff).ram();
;	map(0x8800, 0x8800).mirror(0x07fe).rw(FUNC(taitosj_state::fake_data_r), FUNC(taitosj_state::fake_data_w));
;	map(0x8801, 0x8801).mirror(0x07fe).r(FUNC(taitosj_state::fake_status_r));
;	map(0x9000, 0xbfff).w(FUNC(taitosj_state::characterram_w)).share(m_characterram);
;	map(0xc000, 0xc3ff).ram();
;	map(0xc400, 0xc7ff).ram().share(m_videoram[0]);
;	map(0xc800, 0xcbff).ram().share(m_videoram[1]);
;	map(0xcc00, 0xcfff).ram().share(m_videoram[2]);
;	map(0xd000, 0xd05f).ram().share(m_colscrolly);
;	map(0xd100, 0xd1ff).ram().share(m_spriteram);
;	map(0xd200, 0xd27f).mirror(0x0080).ram().share(m_paletteram);
;	map(0xd300, 0xd300).mirror(0x00ff).writeonly().share(m_video_priority);
;	map(0xd400, 0xd403).mirror(0x00f0).readonly().share(m_collision_reg);
;	map(0xd404, 0xd404).mirror(0x00f3).r(FUNC(taitosj_state::gfxrom_r));
;	map(0xd408, 0xd408).mirror(0x00f0).portr("IN0");
;	map(0xd409, 0xd409).mirror(0x00f0).portr("IN1");
;	map(0xd40a, 0xd40a).mirror(0x00f0).portr("DSW1");
;	map(0xd40b, 0xd40b).mirror(0x00f0).portr("IN2");
;	map(0xd40c, 0xd40c).mirror(0x00f0).portr("IN3");          // Service
;	map(0xd40d, 0xd40d).mirror(0x00f0).portr("IN4");
;	map(0xd40e, 0xd40f).mirror(0x00f0).w(m_ay[0], FUNC(ay8910_device::address_data_w));
;	map(0xd40f, 0xd40f).mirror(0x00f0).r(m_ay[0], FUNC(ay8910_device::data_r));   // DSW2 and DSW3
;	map(0xd500, 0xd505).mirror(0x00f0).writeonly().share(m_scroll);
;	map(0xd506, 0xd507).mirror(0x00f0).writeonly().share(m_colorbank);
;	map(0xd508, 0xd508).mirror(0x00f0).w(FUNC(taitosj_state::collision_reg_clear_w));
;	map(0xd509, 0xd50a).mirror(0x00f0).writeonly().share(m_gfxpointer);
;	map(0xd50b, 0xd50b).mirror(0x00f0).w(FUNC(taitosj_state::soundlatch_w));
;	map(0xd50c, 0xd50c).mirror(0x00f0).w(FUNC(taitosj_state::sound_semaphore2_w));
;	map(0xd50d, 0xd50d).mirror(0x00f0).w("watchdog", FUNC(watchdog_timer_device::reset_w));
;	map(0xd50e, 0xd50e).mirror(0x00f0).w(FUNC(taitosj_state::bankswitch_w));
;	map(0xd50f, 0xd50f).mirror(0x00f0).nopw();
;	map(0xd600, 0xd600).mirror(0x00ff).writeonly().share(m_video_mode);
;	map(0xd700, 0xdfff).noprw();
;	map(0xe000, 0xffff).rom();
	
;#define DSW2_PORT \
;	PORT_DIPNAME( 0x0f, 0x00, DEF_STR( Coin_A ) )          PORT_DIPLOCATION("SWB:1,2,3,4") \
;	PORT_DIPSETTING(    0x0f, DEF_STR( 9C_1C ) ) \
;	PORT_DIPSETTING(    0x0e, DEF_STR( 8C_1C ) ) \
;	PORT_DIPSETTING(    0x0d, DEF_STR( 7C_1C ) ) \
;	PORT_DIPSETTING(    0x0c, DEF_STR( 6C_1C ) ) \
;	PORT_DIPSETTING(    0x0b, DEF_STR( 5C_1C ) ) \
;	PORT_DIPSETTING(    0x0a, DEF_STR( 4C_1C ) ) \
;	PORT_DIPSETTING(    0x09, DEF_STR( 3C_1C ) ) \
;	PORT_DIPSETTING(    0x08, DEF_STR( 2C_1C ) ) \
;	PORT_DIPSETTING(    0x00, DEF_STR( 1C_1C ) ) \
;	PORT_DIPSETTING(    0x01, DEF_STR( 1C_2C ) ) \
;	PORT_DIPSETTING(    0x02, DEF_STR( 1C_3C ) ) \
;	PORT_DIPSETTING(    0x03, DEF_STR( 1C_4C ) ) \
;	PORT_DIPSETTING(    0x04, DEF_STR( 1C_5C ) ) \
;	PORT_DIPSETTING(    0x05, DEF_STR( 1C_6C ) ) \
;	PORT_DIPSETTING(    0x06, DEF_STR( 1C_7C ) ) \
;	PORT_DIPSETTING(    0x07, DEF_STR( 1C_8C ) ) \
;	PORT_DIPNAME( 0xf0, 0x00, DEF_STR( Coin_B ) )          PORT_DIPLOCATION("SWB:5,6,7,8") \
;	PORT_DIPSETTING(    0xf0, DEF_STR( 9C_1C ) ) \
;	PORT_DIPSETTING(    0xe0, DEF_STR( 8C_1C ) ) \
;	PORT_DIPSETTING(    0xd0, DEF_STR( 7C_1C ) ) \
;	PORT_DIPSETTING(    0xc0, DEF_STR( 6C_1C ) ) \
;	PORT_DIPSETTING(    0xb0, DEF_STR( 5C_1C ) ) \
;	PORT_DIPSETTING(    0xa0, DEF_STR( 4C_1C ) ) \
;	PORT_DIPSETTING(    0x90, DEF_STR( 3C_1C ) ) \
;	PORT_DIPSETTING(    0x80, DEF_STR( 2C_1C ) ) \
;	PORT_DIPSETTING(    0x00, DEF_STR( 1C_1C ) ) \
;	PORT_DIPSETTING(    0x10, DEF_STR( 1C_2C ) ) \
;	PORT_DIPSETTING(    0x20, DEF_STR( 1C_3C ) ) \
;	PORT_DIPSETTING(    0x30, DEF_STR( 1C_4C ) ) \
;	PORT_DIPSETTING(    0x40, DEF_STR( 1C_5C ) ) \
;	PORT_DIPSETTING(    0x50, DEF_STR( 1C_6C ) ) \
;	PORT_DIPSETTING(    0x60, DEF_STR( 1C_7C ) ) \
;	PORT_DIPSETTING(    0x70, DEF_STR( 1C_8C ) )
;
;#define COMMON_IN0\
;	PORT_START("IN0")\
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_8WAY\
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY\
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_8WAY\
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_8WAY\
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_BUTTON1 )\
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_BUTTON2 )\
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_UNKNOWN )
;
;#define COMMON_IN1\
;	PORT_START("IN1")\
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_8WAY PORT_COCKTAIL\
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY PORT_COCKTAIL\
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_8WAY PORT_COCKTAIL\
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_8WAY PORT_COCKTAIL\
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_BUTTON1 ) PORT_COCKTAIL\
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_BUTTON2 ) PORT_COCKTAIL\
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_UNKNOWN )
;
;#define COMMON_IN2\
;	PORT_START("IN2")\
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_COIN2 )\
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_COIN1 )\
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_START1 )\
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_START2 )
;
;#define COMMON_IN3(coin3state)\
;	PORT_START("IN3")      /* Service */\
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x10, coin3state, IPT_COIN3 )\
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_TILT )\
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_UNKNOWN )\
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_UNKNOWN )
	
irq_reentrancy_flag_8100 = $8100
task_slot_cursor_8101 = $8101
joy_port_1_d408 = $d408
stack_save_8104 = $8104

0000: 00          nop
0001: 00          nop
0002: 00          nop
0003: F3          di             ; disable interrupts
0004: C3 08 03    jp   boot_0308     ; jump to cold boot
0007: 00          nop
0008: C3 C8 00    jp   $00C8
000B: 00          nop
000C: 00          nop
000D: 00          nop
000E: 00          nop
000F: 00          nop
0010: C3 32 01    jp   $0132
0013: 00          nop
0014: 00          nop
0015: 00          nop
0016: 00          nop
0017: 00          nop
0018: C3 68 01    jp   $0168
001B: 00          nop
001C: 00          nop
001D: 00          nop
001E: 00          nop
001F: 00          nop
0020: C3 F5 01    jp   $01F5
0023: 00          nop
0024: 00          nop
0025: 00          nop
0026: 00          nop
0027: 00          nop
0028: C3 8E 01    jp   $018E
002B: C3 67 08    jp   $0867
002E: 00          nop
002F: 00          nop
0030: C3 02 02    jp   $0202
0033: C3 4A 13    jp   $134A
0036: 00          nop
0037: 00          nop
0038: FD E5       push iy
003A: DD E5       push ix
003C: C5          push bc
003D: D5          push de
003E: E5          push hl
003F: F5          push af
0040: 08          ex   af,af'
0041: D9          exx
0042: C5          push bc
0043: D5          push de
0044: E5          push hl
0045: F5          push af
0046: CD CD 0A    call $0ACD
0049: CD 2B 09    call $092B
004C: CD BA 0B    call read_joystick_0bba
004F: CD F6 0B    call $0BF6
0052: 00          nop
0053: 00          nop
0054: 00          nop
0055: 3A 00 81    ld   a,(irq_reentrancy_flag_8100)
0058: A7          and  a
0059: 20 10       jr   nz,$006B
005B: 3E FF       ld   a,$FF
005D: 32 00 81    ld   (irq_reentrancy_flag_8100),a
0060: FB          ei
0061: CD 7B 00    call $007B
0064: 00          nop
0065: 00          nop
0066: 00          nop
0067: AF          xor  a
0068: 32 00 81    ld   (irq_reentrancy_flag_8100),a
006B: F1          pop  af
006C: E1          pop  hl
006D: D1          pop  de
006E: C1          pop  bc
006F: D9          exx
0070: 08          ex   af,af'
0071: F1          pop  af
0072: E1          pop  hl
0073: D1          pop  de
0074: C1          pop  bc
0075: DD E1       pop  ix
0077: FD E1       pop  iy
0079: FB          ei
007A: C9          ret

007B: AF          xor  a
007C: 2A 02 81    ld   hl,($8102)
007F: CB 45       bit  0,l
0081: 20 0A       jr   nz,$008D
0083: 3C          inc  a
0084: FE 10       cp   $10
0086: D0          ret  nc
0087: CB 1C       rr   h
0089: CB 1D       rr   l
008B: 18 F2       jr   $007F
008D: F5          push af
008E: E5          push hl
008F: 6F          ld   l,a
0090: CD 86 02    call $0286
0093: FD CB 01 76 bit  6,(iy+$01)
0097: 28 05       jr   z,$009E
0099: FD 35 03    dec  (iy+$03)
009C: 28 04       jr   z,$00A2
009E: E1          pop  hl
009F: F1          pop  af
00A0: 18 E1       jr   $0083
00A2: E1          pop  hl
00A3: F1          pop  af
00A4: 32 01 81    ld   (task_slot_cursor_8101),a
00A7: 21 B5 00    ld   hl,$00B5
00AA: E5          push hl
00AB: FD 4E 00    ld   c,(iy+$00)
00AE: D9          exx
00AF: CD 96 02    call task_resume_0296
00B2: D5          push de
00B3: D9          exx
00B4: C9          ret
00B5: 3A 01 81    ld   a,(task_slot_cursor_8101)
00B8: 3C          inc  a
00B9: FE 10       cp   $10
00BB: D0          ret  nc
00BC: 2A 02 81    ld   hl,($8102)
00BF: 47          ld   b,a
00C0: CB 1C       rr   h
00C2: CB 1D       rr   l
00C4: 10 FA       djnz $00C0
00C6: 18 B7       jr   $007F

00C8: CD 36 02    call switch_context_0236
00CB: C5          push bc
00CC: FD E5       push iy
00CE: CD 0F 02    call $020F
00D1: FD 5E 03    ld   e,(iy+$03)
00D4: 16 00       ld   d,$00
00D6: 21 06 81    ld   hl,$8106
00D9: 19          add  hl,de
00DA: 70          ld   (hl),b
00DB: 4B          ld   c,e
00DC: EB          ex   de,hl
00DD: 29          add  hl,hl
00DE: 11 60 7F    ld   de,$7F60
00E1: 19          add  hl,de
00E2: 5E          ld   e,(hl)
00E3: 23          inc  hl
00E4: 56          ld   d,(hl)
00E5: CD 85 02    call $0285
00E8: FD 71 00    ld   (iy+$00),c
00EB: FD 36 01 80 ld   (iy+$01),$80
00EF: FD 73 0E    ld   (iy+$0e),e
00F2: FD 72 0F    ld   (iy+$0f),d
00F5: D9          exx
00F6: FD E5       push iy
00F8: D1          pop  de
00F9: 13          inc  de
00FA: 13          inc  de
00FB: E1          pop  hl
00FC: E5          push hl
00FD: 23          inc  hl
00FE: 23          inc  hl
00FF: 01 0C 00    ld   bc,$000C
0102: ED B0       ldir
0104: 21 0E 01    ld   hl,$010E
0107: E5          push hl
0108: CD 96 02    call task_resume_0296
010B: D5          push de
010C: D9          exx
010D: C9          ret
010E: FD E1       pop  iy
0110: C1          pop  bc
0111: 79          ld   a,c
0112: 3C          inc  a
0113: 28 12       jr   z,$0127
0115: 2A 02 81    ld   hl,($8102)
0118: 04          inc  b
0119: CB 1C       rr   h
011B: CB 1D       rr   l
011D: 10 FA       djnz $0119
011F: D0          ret  nc
0120: D9          exx
0121: CD 96 02    call task_resume_0296
0124: D5          push de
0125: D9          exx
0126: C9          ret
0127: 08          ex   af,af'
0128: D9          exx
0129: F1          pop  af
012A: C1          pop  bc
012B: D1          pop  de
012C: E1          pop  hl
012D: DD E1       pop  ix
012F: FD E1       pop  iy
0131: C9          ret
0132: CD 36 02    call switch_context_0236
0135: FD 7E 03    ld   a,(iy+$03)
0138: B9          cp   c
0139: 20 0B       jr   nz,$0146
013B: 3C          inc  a
013C: CC 00 00    call z,$0000
013F: FD 36 01 00 ld   (iy+$01),$00
0143: C3 BE 02    jp   $02BE
0146: C5          push bc
0147: FD E5       push iy
0149: 4F          ld   c,a
014A: CD 7E 02    call $027E
014D: FD 7E 00    ld   a,(iy+$00)
0150: B9          cp   c
0151: 20 07       jr   nz,$015A
0153: CD BE 02    call $02BE
0156: FD 36 01 00 ld   (iy+$01),$00
015A: FD E1       pop  iy
015C: C1          pop  bc
015D: 79          ld   a,c
015E: 3C          inc  a
015F: 28 C6       jr   z,$0127
0161: D9          exx
0162: CD 96 02    call task_resume_0296
0165: D5          push de
0166: D9          exx
0167: C9          ret
0168: CD 36 02    call switch_context_0236
016B: 79          ld   a,c
016C: 3C          inc  a
016D: 28 17       jr   z,$0186
016F: CD B4 02    call $02B4
0172: ED 5B 02 81 ld   de,($8102)
0176: 7D          ld   a,l
0177: A3          and  e
0178: 6F          ld   l,a
0179: 7C          ld   a,h
017A: A2          and  d
017B: 67          ld   h,a
017C: 22 02 81    ld   ($8102),hl
017F: D9          exx
0180: CD 96 02    call task_resume_0296
0183: D5          push de
0184: D9          exx
0185: C9          ret
0186: 21 00 00    ld   hl,$0000
0189: 22 02 81    ld   ($8102),hl
018C: 18 99       jr   $0127
018E: CD 36 02    call switch_context_0236
0191: C5          push bc
0192: FD E5       push iy
0194: FD 5E 03    ld   e,(iy+$03)
0197: 16 00       ld   d,$00
0199: AF          xor  a
019A: 2A 02 81    ld   hl,($8102)
019D: CB 45       bit  0,l
019F: 20 28       jr   nz,$01C9
01A1: 3C          inc  a
01A2: FE 10       cp   $10
01A4: 30 06       jr   nc,$01AC
01A6: CB 1C       rr   h
01A8: CB 1D       rr   l
01AA: 18 F1       jr   $019D
01AC: FD E1       pop  iy
01AE: C1          pop  bc
01AF: FD 72 03    ld   (iy+$03),d
01B2: 79          ld   a,c
01B3: 3C          inc  a
01B4: CA 27 01    jp   z,$0127
01B7: 2A 02 81    ld   hl,($8102)
01BA: 04          inc  b
01BB: CB 1C       rr   h
01BD: CB 1D       rr   l
01BF: 10 FA       djnz $01BB
01C1: D0          ret  nc
01C2: D9          exx
01C3: CD 96 02    call task_resume_0296
01C6: D5          push de
01C7: D9          exx
01C8: C9          ret
01C9: F5          push af
01CA: E5          push hl
01CB: 6F          ld   l,a
01CC: CD 86 02    call $0286
01CF: FD CB 01 6E bit  5,(iy+$01)
01D3: 28 06       jr   z,$01DB
01D5: 7B          ld   a,e
01D6: FD BE 03    cp   (iy+$03)
01D9: 28 04       jr   z,$01DF
01DB: E1          pop  hl
01DC: F1          pop  af
01DD: 18 C2       jr   $01A1
01DF: D5          push de
01E0: 21 EE 01    ld   hl,$01EE
01E3: E5          push hl
01E4: FD 4E 00    ld   c,(iy+$00)
01E7: D9          exx
01E8: CD 96 02    call task_resume_0296
01EB: D5          push de
01EC: D9          exx
01ED: C9          ret
01EE: D1          pop  de
01EF: 16 FF       ld   d,$FF
01F1: E1          pop  hl
01F2: F1          pop  af
01F3: 18 AC       jr   $01A1
01F5: CD 36 02    call switch_context_0236
01F8: 79          ld   a,c
01F9: 3C          inc  a
01FA: CA 00 00    jp   z,$0000
01FD: FD 36 01 20 ld   (iy+$01),$20
0201: C9          ret
0202: CD 36 02    call switch_context_0236
0205: 79          ld   a,c
0206: 3C          inc  a
0207: CC 00 00    call z,$0000
020A: FD 36 01 40 ld   (iy+$01),$40
020E: C9          ret
020F: 0E 10       ld   c,$10
0211: 06 00       ld   b,$00
0213: 11 01 00    ld   de,$0001
0216: 2A 02 81    ld   hl,($8102)
0219: 7B          ld   a,e
021A: B5          or   l
021B: BD          cp   l
021C: 20 13       jr   nz,$0231
021E: 7A          ld   a,d
021F: B4          or   h
0220: BC          cp   h
0221: 20 0B       jr   nz,$022E
0223: CB 23       sla  e
0225: CB 12       rl   d
0227: 04          inc  b
0228: 0D          dec  c
0229: 20 EE       jr   nz,$0219
022B: C3 00 00    jp   $0000
022E: 67          ld   h,a
022F: 18 01       jr   $0232
0231: 6F          ld   l,a
0232: 22 02 81    ld   ($8102),hl
0235: C9          ret

switch_context_0236:
0236: 08          ex   af,af'
0237: D9          exx
0238: E1          pop  hl		; hl contains return value
0239: 79          ld   a,c
023A: 3C          inc  a
023B: 28 2F       jr   z,save_registers_and_jump_026c		; if c == $ff jump
023D: E3          ex   (sp),hl		; put return value in current stack
023E: EB          ex   de,hl		; and contents of current stack in de
023F: 21 00 00    ld   hl,$0000
0242: 39          add  hl,sp		; save stack value
0243: 22 04 81    ld   (stack_save_8104),hl
0246: FD E5       push iy
0248: CD 7E 02    call $027E
024B: EB          ex   de,hl
024C: 11 10 00    ld   de,$0010
024F: FD 19       add  iy,de
0251: D1          pop  de
0252: F3          di
0253: FD F9       ld   sp,iy
0255: E5          push hl
0256: D5          push de
0257: 08          ex   af,af'
0258: D9          exx
0259: DD E5       push ix
025B: E5          push hl
025C: D5          push de
025D: C5          push bc
025E: F5          push af
025F: FD 21 FE FF ld   iy,$FFFE
0263: FD 39       add  iy,sp
0265: 2A 04 81    ld   hl,(stack_save_8104)
0268: F9          ld   sp,hl
0269: D9          exx
026A: FB          ei
026B: C9          ret

save_registers_and_jump_026c:
026C: 08          ex   af,af'
026D: D9          exx
026E: FD E5       push iy
0270: DD E5       push ix
0272: E5          push hl
0273: D5          push de
0274: C5          push bc
0275: F5          push af
0276: D9          exx
0277: FD 21 FE FF ld   iy,$FFFE
027B: FD 39       add  iy,sp		; iy = sp-2
027D: E9          jp   (hl)			; jump to hl

027E: 06 00       ld   b,$00
0280: 21 06 81    ld   hl,$8106
0283: 09          add  hl,bc
0284: 46          ld   b,(hl)
0285: 68          ld   l,b
0286: 26 00       ld   h,$00
0288: 29          add  hl,hl
0289: 29          add  hl,hl
028A: 29          add  hl,hl
028B: 29          add  hl,hl
028C: C5          push bc
028D: 01 00 80    ld   bc,$8000
0290: 09          add  hl,bc
0291: E5          push hl
0292: FD E1       pop  iy
0294: C1          pop  bc
0295: C9          ret

task_resume_0296:
0296: 21 00 00    ld   hl,$0000
0299: 39          add  hl,sp		; copy sp value in hl
029A: 22 04 81    ld   (stack_save_8104),hl	; store sp value in memory
029D: FD 23       inc  iy
029F: FD 23       inc  iy
02A1: F3          di
02A2: FD F9       ld   sp,iy
02A4: F1          pop  af
02A5: C1          pop  bc
02A6: D1          pop  de
02A7: E1          pop  hl
02A8: DD E1       pop  ix
02AA: FD E1       pop  iy
02AC: D9          exx
02AD: D1          pop  de
02AE: 2A 04 81    ld   hl,(stack_save_8104)
02B1: F9          ld   sp,hl
02B2: FB          ei
02B3: C9          ret

02B4: 21 01 00    ld   hl,$0001
02B7: 04          inc  b
02B8: 05          dec  b
02B9: C8          ret  z
02BA: 29          add  hl,hl
02BB: 10 FD       djnz $02BA
02BD: C9          ret

02BE: CD B4 02    call $02B4
02C1: ED 5B 02 81 ld   de,($8102)
02C5: 7D          ld   a,l
02C6: 2F          cpl
02C7: A3          and  e
02C8: 6F          ld   l,a
02C9: 7C          ld   a,h
02CA: 2F          cpl
02CB: A2          and  d
02CC: 67          ld   h,a
02CD: 22 02 81    ld   ($8102),hl
02D0: C9          ret
02D1: 00          nop
02D2: 00          nop
02D3: 00          nop
02D4: 00          nop
02D5: C3 0E 04    jp   $040E
02D8: C3 67 08    jp   $0867
02DB: C3 4A 13    jp   $134A
02DE: C3 5C 11    jp   $115C
02E1: C3 8C 0B    jp   $0B8C
02E4: C3 F5 03    jp   $03F5
02E7: C3 9F 12    jp   $129F
02EA: C3 A9 0C    jp   $0CA9
02ED: C3 B0 0C    jp   $0CB0
02F0: C3 19 0D    jp   $0D19
02F3: C3 F1 0D    jp   $0DF1
02F6: C3 51 0E    jp   $0E51
02F9: C3 5C 10    jp   $105C
02FC: C3 7C 11    jp   $117C
02FF: C3 E2 13    jp   $13E2
0302: C3 8D 10    jp   $108D
0305: C3 C0 10    jp   $10C0

boot_0308:
0308: ED 56       im   1            ; interrupt mode 1 (RST 38h on /INT)
030A: 21 00 80    ld   hl,$8000     ; zero-fill all Work RAM ($8000–$87FF)
030D: 36 00       ld   (hl),$00
030F: 11 01 80    ld   de,$8001
0312: 01 FF 07    ld   bc,$07FF
0315: ED B0       ldir
0317: 31 FE 87    ld   sp,$87FE     ; stack at top of Work RAM
031A: 06 00       ld   b,$00        ; call game_state_init_table (jp vector #0)
031C: CD D8 02    call $02D8        ; decompress / upload GFX tile data to char RAM
031F: CD B8 07    call $07B8        ; hardware init: AY sound, scroll regs, palette
0322: CD CE 09    call $09CE        ; read DSW1
0325: 3A 0A D4    ld   a,($D40A)    
0328: CB 6F       bit  5,a          ; test "Cabinet type" dip switch
032A: C2 FA 0C    jp   nz,$0CFA     ; attract / demo mode if set
032D: 3E 09       ld   a,$09        ; set color bank
032F: 32 06 D5    ld   ($D506),a
0332: CD 8D 04    call $048D
0335: 21 00 D0    ld   hl,$D000
0338: 01 60 00    ld   bc,$0060
033B: CD EA 03    call $03EA
033E: 21 C4 03    ld   hl,$03C4
0341: 11 06 C5    ld   de,$C506
0344: 01 0E 00    ld   bc,$000E
0347: ED B0       ldir
0349: CD 5D 03    call $035D
034C: DA BB 09    jp   c,$09BB
034F: 21 DE 03    ld   hl,$03DE
0352: 11 47 C5    ld   de,$C547
0355: 01 0C 00    ld   bc,$000C
0358: ED B0       ldir
035A: C3 BB 09    jp   $09BB
035D: DD E1       pop  ix
035F: 0E 02       ld   c,$02
0361: 06 55       ld   b,$55
0363: 78          ld   a,b
0364: 2F          cpl
0365: 47          ld   b,a
0366: 21 00 80    ld   hl,$8000
0369: 70          ld   (hl),b
036A: 23          inc  hl
036B: 7C          ld   a,h
036C: FE 88       cp   $88
036E: C2 69 03    jp   nz,$0369
0371: 21 00 80    ld   hl,$8000
0374: 78          ld   a,b
0375: BE          cp   (hl)
0376: C2 88 03    jp   nz,$0388
0379: 23          inc  hl
037A: 7C          ld   a,h
037B: FE 88       cp   $88
037D: C2 74 03    jp   nz,$0374
0380: 0D          dec  c
0381: C2 63 03    jp   nz,$0363
0384: A7          and  a
0385: DD E5       push ix
0387: C9          ret
0388: E5          push hl
0389: AE          xor  (hl)
038A: 47          ld   b,a
038B: 21 8F C5    ld   hl,$C58F
038E: 36 0B       ld   (hl),$0B
0390: 23          inc  hl
0391: 36 12       ld   (hl),$12
0393: 23          inc  hl
0394: 36 1D       ld   (hl),$1D
0396: 23          inc  hl
0397: 23          inc  hl
0398: 23          inc  hl
0399: CD B6 03    call $03B6
039C: 21 D2 03    ld   hl,$03D2
039F: 11 47 C5    ld   de,$C547
03A2: 01 0C 00    ld   bc,$000C
03A5: ED B0       ldir
03A7: EB          ex   de,hl
03A8: 23          inc  hl
03A9: D1          pop  de
03AA: 42          ld   b,d
03AB: CD B6 03    call $03B6
03AE: 23          inc  hl
03AF: 43          ld   b,e
03B0: CD B6 03    call $03B6
03B3: 37          scf
03B4: 18 CF       jr   $0385
03B6: 78          ld   a,b
03B7: 0F          rrca
03B8: 0F          rrca
03B9: 0F          rrca
03BA: 0F          rrca
03BB: E6 0F       and  $0F
03BD: 77          ld   (hl),a
03BE: 23          inc  hl
03BF: 78          ld   a,b
03C0: E6 0F       and  $0F
03C2: 77          ld   (hl),a
03C3: C9          ret
03C4: 1B          dec  de
03C5: 0A          ld   a,(bc)
03C6: 16 FF       ld   d,$FF
03C8: 0C          inc  c
03C9: 11 0E 0C    ld   de,$0C0E
03CC: 14          inc  d
03CD: FF          rst  $38
03CE: 16 18       ld   d,$18
03D0: 0D          dec  c
03D1: 0E 0B       ld   c,$0B
03D3: 0A          ld   a,(bc)
03D4: 0D          dec  c
03D5: FF          rst  $38
03D6: 1B          dec  de
03D7: 0A          ld   a,(bc)
03D8: 16 FF       ld   d,$FF
03DA: 0A          ld   a,(bc)
03DB: 0D          dec  c
03DC: 0D          dec  c
03DD: 1B          dec  de
03DE: 17          rla
03DF: 18 FF       jr   $03E0
03E1: 1B          dec  de
03E2: 0A          ld   a,(bc)
03E3: 16 FF       ld   d,$FF
03E5: 0E 1B       ld   c,$1B
03E7: 1B          dec  de
03E8: 18 1B       jr   $0405
03EA: AF          xor  a
03EB: 57          ld   d,a
03EC: 72          ld   (hl),d
03ED: 72          ld   (hl),d
03EE: 23          inc  hl
03EF: 0B          dec  bc
03F0: 78          ld   a,b
03F1: B1          or   c
03F2: 20 F8       jr   nz,$03EC
03F4: C9          ret
03F5: 1A          ld   a,(de)
03F6: 4F          ld   c,a
03F7: 13          inc  de
03F8: 1A          ld   a,(de)
03F9: 47          ld   b,a
03FA: 13          inc  de
03FB: C5          push bc
03FC: E5          push hl
03FD: 1A          ld   a,(de)
03FE: 77          ld   (hl),a
03FF: 77          ld   (hl),a
0400: 23          inc  hl
0401: 13          inc  de
0402: 0D          dec  c
0403: 20 F8       jr   nz,$03FD
0405: E1          pop  hl
0406: 01 20 00    ld   bc,$0020
0409: 09          add  hl,bc
040A: C1          pop  bc
040B: 10 EE       djnz $03FB
040D: C9          ret
040E: 1A          ld   a,(de)
040F: A7          and  a
0410: C8          ret  z
0411: DD E1       pop  ix
0413: FD E1       pop  iy
0415: 47          ld   b,a
0416: 13          inc  de
0417: 1A          ld   a,(de)
0418: 77          ld   (hl),a
0419: 77          ld   (hl),a
041A: 13          inc  de
041B: 23          inc  hl
041C: 79          ld   a,c
041D: F7          rst  $30
041E: 10 F7       djnz $0417
0420: FD E5       push iy
0422: DD E5       push ix
0424: C9          ret
0425: 21 6D C4    ld   hl,$C46D
0428: 11 6D 81    ld   de,$816D
042B: 18 14       jr   $0441
042D: 3A 56 81    ld   a,($8156)
0430: A7          and  a
0431: 28 08       jr   z,$043B
0433: 21 63 C4    ld   hl,$C463
0436: 11 70 81    ld   de,$8170
0439: 18 06       jr   $0441
043B: 21 77 C4    ld   hl,$C477
043E: 11 73 81    ld   de,$8173
0441: 0E 00       ld   c,$00
0443: 18 13       jr   $0458
0445: 3A 56 81    ld   a,($8156)
0448: A7          and  a
0449: 28 05       jr   z,$0450
044B: 11 30 84    ld   de,$8430
044E: 18 03       jr   $0453
0450: 11 33 84    ld   de,$8433
0453: 21 6D C4    ld   hl,$C46D
0456: 0E 80       ld   c,$80
0458: 06 06       ld   b,$06
045A: CB 40       bit  0,b
045C: 20 09       jr   nz,$0467
045E: 1A          ld   a,(de)
045F: 0F          rrca
0460: 0F          rrca
0461: 0F          rrca
0462: 0F          rrca
0463: CD 75 04    call $0475
0466: 05          dec  b
0467: 05          dec  b
0468: 20 02       jr   nz,$046C
046A: CB C1       set  0,c
046C: 04          inc  b
046D: 1A          ld   a,(de)
046E: CD 75 04    call $0475
0471: 1B          dec  de
0472: 10 EA       djnz $045E
0474: C9          ret
0475: E6 0F       and  $0F
0477: 28 0C       jr   z,$0485
0479: CB C1       set  0,c
047B: CB 79       bit  7,c
047D: 28 02       jr   z,$0481
047F: CB FF       set  7,a
0481: 77          ld   (hl),a
0482: 77          ld   (hl),a
0483: 23          inc  hl
0484: C9          ret
0485: CB 41       bit  0,c
0487: 20 F2       jr   nz,$047B
0489: 3E FF       ld   a,$FF
048B: 18 EE       jr   $047B
048D: 21 00 C4    ld   hl,$C400
0490: 36 FF       ld   (hl),$FF
0492: 11 01 C4    ld   de,$C401
0495: 01 FF 03    ld   bc,$03FF
0498: ED B0       ldir
049A: 18 12       jr   $04AE

update_scrolling_049c:
049C: 21 80 C4    ld   hl,$C480
049F: 36 FF       ld   (hl),$FF
04A1: 11 81 C4    ld   de,$C481
04A4: 01 FF 02    ld   bc,$02FF
04A7: ED B0       ldir
04A9: 06 FF       ld   b,$FF
04AB: CD D0 13    call $13D0
04AE: 06 10       ld   b,$10
04B0: CD D8 02    call $02D8
04B3: C9          ret

04B4: CD 8D 04    call $048D
04B7: CD F1 04    call $04F1
04BA: 3A 6A 81    ld   a,($816A)
04BD: A7          and  a
04BE: C4 03 05    call nz,$0503
04C1: CD E0 04    call $04E0
04C4: 21 05 C7    ld   hl,$C705
04C7: 11 29 05    ld   de,$0529
04CA: 0E 01       ld   c,$01
04CC: CD D5 02    call $02D5
04CF: 3A 5D 81    ld   a,($815D)
04D2: A7          and  a
04D3: C8          ret  z
04D4: 21 17 C7    ld   hl,$C717
04D7: 11 3C 05    ld   de,$053C
04DA: 0E 01       ld   c,$01
04DC: CD D5 02    call $02D5
04DF: C9          ret
04E0: 21 42 05    ld   hl,$0542
04E3: 11 B6 C7    ld   de,$C7B6
04E6: 01 07 00    ld   bc,$0007
04E9: ED B0       ldir
04EB: 21 69 81    ld   hl,$8169
04EE: C3 9C 09    jp   $099C
04F1: 21 15 05    ld   hl,$0515
04F4: 11 41 C4    ld   de,$C441
04F7: 01 14 00    ld   bc,$0014
04FA: ED B0       ldir
04FC: CD 33 04    call $0433
04FF: CD 25 04    call $0425
0502: C9          ret
0503: 21 15 05    ld   hl,$0515
0506: 11 55 C4    ld   de,$C455
0509: 01 08 00    ld   bc,$0008
050C: ED B0       ldir
050E: EB          ex   de,hl
050F: 36 02       ld   (hl),$02
0511: CD 3B 04    call $043B
0514: C9          ret
0515: FF          rst  $38
0516: 19          add  hl,de
0517: 15          dec  d
0518: 0A          ld   a,(bc)
0519: 22 0E 1B    ld   ($1B0E),hl
051C: 27          daa
051D: 01 FF FF    ld   bc,$FFFF
0520: 11 12 27    ld   de,$2712
0523: 1C          inc  e
0524: 0C          inc  c
0525: 18 1B       jr   $0542
0527: 0E FF       ld   c,$FF
0529: 12          ld   (de),a
052A: 2B          dec  hl
052B: 1D          dec  e
052C: 0A          ld   a,(bc)
052D: 12          ld   (de),a
052E: 1D          dec  e
052F: 18 FF       jr   $0530
0531: 0C          inc  c
0532: 18 1B       jr   $054F
0534: 19          add  hl,de
0535: 18 1B       jr   $0552
0537: 0A          ld   a,(bc)
0538: 1D          dec  e
0539: 12          ld   (de),a
053A: 18 17       jr   $0553
053C: 05          dec  b
053D: FF          rst  $38
053E: 01 09 08    ld   bc,$0809
0541: 02          ld   (bc),a
0542: 0C          inc  c
0543: 1B          dec  de
0544: 0E 0D       ld   c,$0D
0546: 12          ld   (de),a
0547: 1D          dec  e
0548: 27          daa
0549: CD 9C 04    call update_scrolling_049c
054C: 21 68 C5    ld   hl,$C568
054F: 11 BA 05    ld   de,$05BA
0552: 0E 01       ld   c,$01
0554: CD D5 02    call $02D5
0557: 3A 67 81    ld   a,($8167)
055A: A7          and  a
055B: 20 0B       jr   nz,$0568
055D: 21 61 81    ld   hl,$8161
0560: 7E          ld   a,(hl)
0561: 23          inc  hl
0562: 46          ld   b,(hl)
0563: 11 48 C6    ld   de,$C648
0566: 18 2B       jr   $0593
0568: 21 EB C5    ld   hl,$C5EB
056B: 11 CA 05    ld   de,$05CA
056E: 0E 01       ld   c,$01
0570: CD D5 02    call $02D5
0573: 21 8A C6    ld   hl,$C68A
0576: 11 D5 05    ld   de,$05D5
0579: 0E 01       ld   c,$01
057B: CD D5 02    call $02D5
057E: 21 61 81    ld   hl,$8161
0581: 7E          ld   a,(hl)
0582: 23          inc  hl
0583: 46          ld   b,(hl)
0584: 11 29 C6    ld   de,$C629
0587: CD 93 05    call $0593
058A: 21 65 81    ld   hl,$8165
058D: 7E          ld   a,(hl)
058E: 23          inc  hl
058F: 46          ld   b,(hl)
0590: 11 C9 C6    ld   de,$C6C9
0593: 12          ld   (de),a
0594: 13          inc  de
0595: C5          push bc
0596: 21 C4 05    ld   hl,$05C4
0599: 01 05 00    ld   bc,$0005
059C: ED B0       ldir
059E: FE 01       cp   $01
05A0: 28 03       jr   z,$05A5
05A2: 3E 1C       ld   a,$1C
05A4: 12          ld   (de),a
05A5: 13          inc  de
05A6: 13          inc  de
05A7: C1          pop  bc
05A8: 78          ld   a,b
05A9: 12          ld   (de),a
05AA: 13          inc  de
05AB: 21 15 05    ld   hl,$0515
05AE: 01 07 00    ld   bc,$0007
05B1: ED B0       ldir
05B3: FE 01       cp   $01
05B5: C8          ret  z
05B6: 3E 1C       ld   a,$1C
05B8: 12          ld   (de),a
05B9: C9          ret
05BA: 0F          rrca
05BB: 12          ld   (de),a
05BC: 17          rla
05BD: 1C          inc  e
05BE: 0E 1B       ld   c,$1B
05C0: 1D          dec  e
05C1: FF          rst  $38
05C2: FF          rst  $38
05C3: FF          rst  $38
05C4: FF          rst  $38
05C5: 0C          inc  c
05C6: 18 12       jr   $05DA
05C8: 17          rla
05C9: 1C          inc  e
05CA: 0A          ld   a,(bc)
05CB: 15          dec  d
05CC: 0E 0F       ld   c,$0F
05CE: 1D          dec  e
05CF: FF          rst  $38
05D0: 0E 17       ld   c,$17
05D2: 1D          dec  e
05D3: 1B          dec  de
05D4: 22 0B 1B    ld   ($1B0B),hl
05D7: 12          ld   (de),a
05D8: 10 11       djnz $05EB
05DA: 1D          dec  e
05DB: FF          rst  $38
05DC: 0E 17       ld   c,$17
05DE: 1D          dec  e
05DF: 1B          dec  de
05E0: 22 CD 9C    ld   ($9CCD),hl
05E3: 04          inc  b
05E4: 21 0A 06    ld   hl,$060A
05E7: 11 6E C5    ld   de,$C56E
05EA: 01 04 00    ld   bc,$0004
05ED: ED B0       ldir
05EF: 21 0E 06    ld   hl,$060E
05F2: 11 E6 C5    ld   de,$C5E6
05F5: 01 14 00    ld   bc,$0014
05F8: ED B0       ldir
05FA: C9          ret
05FB: CD E1 05    call $05E1
05FE: 21 22 06    ld   hl,$0622
0601: 11 E4 C5    ld   de,$C5E4
0604: 01 0F 00    ld   bc,$000F
0607: ED B0       ldir
0609: C9          ret
060A: 19          add  hl,de
060B: 1E 1C       ld   e,$1C
060D: 11 18 17    ld   de,$1718
0610: 15          dec  d
0611: 22 FF FF    ld   ($FFFF),hl
0614: 01 19 15    ld   bc,$1519
0617: 0A          ld   a,(bc)
0618: 22 0E 1B    ld   ($1B0E),hl
061B: FF          rst  $38
061C: 0B          dec  bc
061D: 1E 1D       ld   e,$1D
061F: 1D          dec  e
0620: 18 17       jr   $0639
0622: 01 FF 18    ld   bc,$18FF
0625: 1B          dec  de
0626: FF          rst  $38
0627: 02          ld   (bc),a
0628: FF          rst  $38
0629: FF          rst  $38
062A: 19          add  hl,de
062B: 15          dec  d
062C: 0A          ld   a,(bc)
062D: 22 0E 1B    ld   ($1B0E),hl
0630: 1C          inc  e
0631: 0F          rrca
0632: 0C          inc  c
0633: 18 17       jr   $064C
0635: 10 1B       djnz $0652
0637: 0A          ld   a,(bc)
0638: 1D          dec  e
0639: 1E 15       ld   e,$15
063B: 0A          ld   a,(bc)
063C: 1D          dec  e
063D: 12          ld   (de),a
063E: 18 17       jr   $0657
0640: 1C          inc  e
0641: 0A          ld   a,(bc)
0642: 10 0A       djnz $064E
0644: 16 0E       ld   d,$0E
0646: FF          rst  $38
0647: FF          rst  $38
0648: 18 1F       jr   $0669
064A: 0E 1B       ld   c,$1B
064C: 14          inc  d
064D: 19          add  hl,de
064E: 15          dec  d
064F: 0A          ld   a,(bc)
0650: 22 0E 1B    ld   ($1B0E),hl
0653: 29          add  hl,hl
0654: 01 2A FF    ld   bc,$FF2A
0657: FF          rst  $38
0658: 10 0A       djnz $0664
065A: 16 0E       ld   d,$0E
065C: FF          rst  $38
065D: 18 1F       jr   $067E
065F: 0E 1B       ld   c,$1B
0661: 0F          rrca
0662: 1B          dec  de
0663: 0E 0E       ld   c,$0E
0665: FF          rst  $38
0666: 10 0A       djnz $0672
0668: 16 0E       ld   d,$0E
066A: 3A 5C 81    ld   a,($815C)
066D: A7          and  a
066E: 20 0C       jr   nz,$067C
0670: 21 61 06    ld   hl,$0661
0673: 11 A2 C7    ld   de,$C7A2
0676: 01 09 00    ld   bc,$0009
0679: ED B0       ldir
067B: C9          ret
067C: CD 81 0B    call $0B81
067F: 46          ld   b,(hl)
0680: 21 A2 C7    ld   hl,$C7A2
0683: 05          dec  b
0684: 28 05       jr   z,$068B
0686: 3E 2E       ld   a,$2E
0688: CD 93 06    call $0693
068B: 3E FF       ld   a,$FF
068D: 06 08       ld   b,$08
068F: CD 93 06    call $0693
0692: C9          ret
0693: 77          ld   (hl),a
0694: 77          ld   (hl),a
0695: 23          inc  hl
0696: 10 FB       djnz $0693
0698: C9          ret
0699: 21 B6 C7    ld   hl,$C7B6
069C: 36 FF       ld   (hl),$FF
069E: 11 B7 C7    ld   de,$C7B7
06A1: 01 07 00    ld   bc,$0007
06A4: ED B0       ldir
06A6: 21 85 10    ld   hl,$1085
06A9: 11 4C C4    ld   de,$C44C
06AC: 01 08 00    ld   bc,$0008
06AF: ED B0       ldir
06B1: C9          ret
06B2: 21 70 81    ld   hl,$8170
06B5: 11 73 81    ld   de,$8173
06B8: CD 39 07    call $0739
06BB: 30 06       jr   nc,$06C3
06BD: 21 70 81    ld   hl,$8170
06C0: E5          push hl
06C1: 18 04       jr   $06C7
06C3: 21 73 81    ld   hl,$8173
06C6: E5          push hl
06C7: 11 6D 81    ld   de,$816D
06CA: CD 39 07    call $0739
06CD: E1          pop  hl
06CE: D0          ret  nc
06CF: 2B          dec  hl
06D0: 2B          dec  hl
06D1: 11 6B 81    ld   de,$816B
06D4: 01 03 00    ld   bc,$0003
06D7: ED B0       ldir
06D9: C9          ret
06DA: 21 4B 84    ld   hl,$844B
06DD: 3A 56 81    ld   a,($8156)
06E0: A7          and  a
06E1: 28 05       jr   z,$06E8
06E3: CB 7E       bit  7,(hl)
06E5: C0          ret  nz
06E6: 18 03       jr   $06EB
06E8: CB 76       bit  6,(hl)
06EA: C0          ret  nz
06EB: 7E          ld   a,(hl)
06EC: E6 03       and  $03
06EE: C8          ret  z
06EF: 21 32 07    ld   hl,$0732
06F2: FE 01       cp   $01
06F4: CA 02 07    jp   z,$0702
06F7: 23          inc  hl
06F8: 23          inc  hl
06F9: 23          inc  hl
06FA: FE 02       cp   $02
06FC: CA 02 07    jp   z,$0702
06FF: 23          inc  hl
0700: 23          inc  hl
0701: 23          inc  hl
0702: 3A 56 81    ld   a,($8156)
0705: A7          and  a
0706: 28 05       jr   z,$070D
0708: 11 70 81    ld   de,$8170
070B: 18 03       jr   $0710
070D: 11 73 81    ld   de,$8173
0710: CD 39 07    call $0739
0713: D8          ret  c
0714: 21 4B 84    ld   hl,$844B
0717: 3A 56 81    ld   a,($8156)
071A: A7          and  a
071B: 28 04       jr   z,$0721
071D: CB FE       set  7,(hl)
071F: 18 02       jr   $0723
0721: CB F6       set  6,(hl)
0723: CD 81 0B    call $0B81
0726: 34          inc  (hl)
0727: 3E C0       ld   a,$C0
0729: 32 0B D5    ld   ($D50B),a
072C: CD 6A 06    call $066A
072F: C9          ret
0730: 00          nop
0731: 00          nop
0732: 01 00 00    ld   bc,$0000
0735: 02          ld   (bc),a
0736: 00          nop
0737: 00          nop
0738: 03          inc  bc
0739: 06 03       ld   b,$03
073B: 1A          ld   a,(de)
073C: BE          cp   (hl)
073D: C0          ret  nz
073E: 1B          dec  de
073F: 2B          dec  hl
0740: 10 F9       djnz $073B
0742: C9          ret
0743: 3A 56 81    ld   a,($8156)
0746: A7          and  a
0747: 28 05       jr   z,$074E
0749: 11 6E 81    ld   de,$816E
074C: 18 03       jr   $0751
074E: 11 71 81    ld   de,$8171
0751: 06 03       ld   b,$03
0753: AF          xor  a
0754: 1A          ld   a,(de)
0755: 8E          adc  a,(hl)
0756: 27          daa
0757: 12          ld   (de),a
0758: 13          inc  de
0759: 23          inc  hl
075A: 10 F8       djnz $0754
075C: C9          ret
075D: 3A 56 81    ld   a,($8156)
0760: A7          and  a
0761: 28 05       jr   z,$0768
0763: 11 6E 81    ld   de,$816E
0766: 18 13       jr   $077B
0768: 11 71 81    ld   de,$8171
076B: 18 0E       jr   $077B
076D: 3A 56 81    ld   a,($8156)
0770: A7          and  a
0771: 28 05       jr   z,$0778
0773: 11 2E 84    ld   de,$842E
0776: 18 03       jr   $077B
0778: 11 31 84    ld   de,$8431
077B: 06 03       ld   b,$03
077D: AF          xor  a
077E: 1A          ld   a,(de)
077F: 9E          sbc  a,(hl)
0780: 27          daa
0781: 12          ld   (de),a
0782: 13          inc  de
0783: 23          inc  hl
0784: 10 F8       djnz $077E
0786: 1B          dec  de
0787: 38 01       jr   c,$078A
0789: C9          ret
078A: AF          xor  a
078B: 12          ld   (de),a
078C: 1B          dec  de
078D: 12          ld   (de),a
078E: 1B          dec  de
078F: 12          ld   (de),a
0790: 37          scf
0791: C9          ret
0792: 7E          ld   a,(hl)
0793: 2F          cpl
0794: 12          ld   (de),a
0795: 23          inc  hl
0796: 13          inc  de
0797: 10 F9       djnz $0792
0799: C9          ret
079A: 08          ex   af,af'
079B: AF          xor  a
079C: 08          ex   af,af'
079D: 22 09 D5    ld   ($D509),hl
07A0: 3A 04 D4    ld   a,($D404)
07A3: FE FF       cp   $FF
07A5: 20 07       jr   nz,$07AE
07A7: 08          ex   af,af'
07A8: 3C          inc  a
07A9: FE 04       cp   $04
07AB: 38 EF       jr   c,$079C
07AD: 08          ex   af,af'
07AE: 12          ld   (de),a
07AF: 12          ld   (de),a
07B0: 13          inc  de
07B1: 23          inc  hl
07B2: 0B          dec  bc
07B3: 78          ld   a,b
07B4: B1          or   c
07B5: 20 E3       jr   nz,$079A
07B7: C9          ret
07B8: 21 00 60    ld   hl,$6000
07BB: 11 00 A8    ld   de,$A800
07BE: 01 00 05    ld   bc,$0500
07C1: CD 9A 07    call $079A
07C4: 21 00 65    ld   hl,$6500
07C7: 11 00 B0    ld   de,$B000
07CA: 01 00 05    ld   bc,$0500
07CD: CD 9A 07    call $079A
07D0: 21 00 6A    ld   hl,$6A00
07D3: 11 00 B8    ld   de,$B800
07D6: 01 00 05    ld   bc,$0500
07D9: CD 9A 07    call $079A
07DC: 21 E0 AF    ld   hl,$AFE0
07DF: 01 20 00    ld   bc,$0020
07E2: CD EA 03    call $03EA
07E5: 21 E0 B7    ld   hl,$B7E0
07E8: 01 20 00    ld   bc,$0020
07EB: CD EA 03    call $03EA
07EE: 21 E0 BF    ld   hl,$BFE0
07F1: 01 20 00    ld   bc,$0020
07F4: CD EA 03    call $03EA
07F7: C9          ret
07F8: 06 00       ld   b,$00
07FA: CD D8 02    call $02D8
07FD: 3A 59 81    ld   a,($8159)
0800: A7          and  a
0801: 28 3B       jr   z,$083E
0803: 3A 56 81    ld   a,($8156)
0806: A7          and  a
0807: 28 25       jr   z,$082E
0809: 3E 03       ld   a,$03
080B: 32 57 81    ld   ($8157),a
080E: 47          ld   b,a
080F: CD 74 08    call $0874
0812: 00          nop
0813: 00          nop
0814: 00          nop
0815: CD 46 08    call $0846
0818: 21 00 10    ld   hl,$1000
081B: 22 F9 82    ld   ($82F9),hl
081E: 21 00 00    ld   hl,$0000
0821: 22 FB 82    ld   ($82FB),hl
0824: 22 FD 82    ld   ($82FD),hl
0827: CD 9F 12    call $129F
082A: CD AE 04    call $04AE
082D: C9          ret
082E: 3E 00       ld   a,$00
0830: 32 57 81    ld   ($8157),a
0833: 47          ld   b,a
0834: CD 74 08    call $0874
0837: 3E 01       ld   a,$01
0839: CD 48 08    call $0848
083C: 18 DA       jr   $0818
083E: 3A 58 81    ld   a,($8158)
0841: A7          and  a
0842: 20 C5       jr   nz,$0809
0844: 18 E8       jr   $082E
0846: 3E FF       ld   a,$FF
0848: 32 1B 84    ld   ($841B),a
084B: C9          ret
084C: 21 25 84    ld   hl,$8425
084F: 3A 56 81    ld   a,($8156)
0852: A7          and  a
0853: 28 01       jr   z,$0856
0855: 23          inc  hl
0856: 7E          ld   a,(hl)
0857: A7          and  a
0858: C8          ret  z
0859: 3A 56 81    ld   a,($8156)
085C: 2F          cpl
085D: E6 03       and  $03
085F: 32 56 81    ld   ($8156),a
0862: AF          xor  a
0863: 32 74 81    ld   ($8174),a
0866: C9          ret
0867: 3A D7 81    ld   a,($81D7)
086A: E6 0F       and  $0F
086C: B0          or   b
086D: 32 D7 81    ld   ($81D7),a
0870: 32 00 D6    ld   ($D600),a
0873: C9          ret
0874: 3A D7 81    ld   a,($81D7)
0877: E6 FC       and  $FC
0879: 18 F1       jr   $086C
087B: 21 0A D4    ld   hl,$D40A
087E: AF          xor  a
087F: CB 7E       bit  7,(hl)
0881: 28 02       jr   z,$0885
0883: 3E 03       ld   a,$03
0885: 32 59 81    ld   ($8159),a
0888: AF          xor  a
0889: CB 76       bit  6,(hl)
088B: 20 02       jr   nz,$088F
088D: 3E 03       ld   a,$03
088F: 32 58 81    ld   ($8158),a
0892: 7E          ld   a,(hl)
0893: 2F          cpl
0894: 47          ld   b,a
0895: E6 03       and  $03
0897: 32 5A 81    ld   ($815A),a
089A: 78          ld   a,b
089B: 0F          rrca
089C: 0F          rrca
089D: 0F          rrca
089E: E6 03       and  $03
08A0: 32 5B 81    ld   ($815B),a
08A3: C9          ret
08A4: 3E 07       ld   a,$07
08A6: 32 0E D4    ld   ($D40E),a
08A9: 3E 38       ld   a,$38
08AB: 32 0F D4    ld   ($D40F),a
08AE: 3E 0E       ld   a,$0E
08B0: 32 0E D4    ld   ($D40E),a
08B3: 3A 0F D4    ld   a,($D40F)
08B6: C9          ret
08B7: 3E 07       ld   a,$07
08B9: 32 0E D4    ld   ($D40E),a
08BC: 3E 38       ld   a,$38
08BE: 32 0F D4    ld   ($D40F),a
08C1: 3E 0F       ld   a,$0F
08C3: 32 0E D4    ld   ($D40E),a
08C6: 3A 0F D4    ld   a,($D40F)
08C9: C9          ret

08CA: 21 5E 81    ld   hl,$815E
08CD: 36 00       ld   (hl),$00
08CF: 11 5F 81    ld   de,$815F
08D2: 01 0D 00    ld   bc,$000D
08D5: ED B0       ldir
08D7: 3E 01       ld   a,$01
08D9: 32 68 81    ld   ($8168),a
08DC: 32 0E D5    ld   ($D50E),a
08DF: CD A4 08    call $08A4
08E2: 21 61 81    ld   hl,$8161
08E5: CD 16 09    call $0916
08E8: CD B7 08    call $08B7
08EB: 47          ld   b,a
08EC: 2F          cpl
08ED: E6 03       and  $03
08EF: 32 4B 84    ld   ($844B),a
08F2: 78          ld   a,b
08F3: 07          rlca
08F4: 47          ld   b,a
08F5: E6 01       and  $01
08F7: F5          push af
08F8: 78          ld   a,b
08F9: 07          rlca
08FA: 47          ld   b,a
08FB: E6 01       and  $01
08FD: 32 5C 81    ld   ($815C),a
0900: 78          ld   a,b
0901: 07          rlca
0902: E6 01       and  $01
0904: 32 5D 81    ld   ($815D),a
0907: F1          pop  af
0908: 32 67 81    ld   ($8167),a
090B: C8          ret  z
090C: CD A4 08    call $08A4
090F: 21 65 81    ld   hl,$8165
0912: 0F          rrca
0913: 0F          rrca
0914: 0F          rrca
0915: 0F          rrca
0916: E6 0F       and  $0F
0918: CB 5F       bit  3,a
091A: 28 09       jr   z,$0925
091C: E6 07       and  $07
091E: C6 02       add  a,$02
0920: 77          ld   (hl),a
0921: 23          inc  hl
0922: 36 01       ld   (hl),$01
0924: C9          ret
0925: 36 01       ld   (hl),$01
0927: 3C          inc  a
0928: 23          inc  hl
0929: 77          ld   (hl),a
092A: C9          ret
092B: 3A 68 81    ld   a,($8168)
092E: 32 0E D5    ld   ($D50E),a
0931: 3A 0C D4    ld   a,($D40C)
0934: CB 6F       bit  5,a
0936: CA AA 09    jp   z,$09AA
0939: 21 5E 81    ld   hl,$815E
093C: CB 67       bit  4,a
093E: 28 03       jr   z,$0943
0940: 36 01       ld   (hl),$01
0942: C9          ret
0943: 7E          ld   a,(hl)
0944: A7          and  a
0945: 28 05       jr   z,$094C
0947: AF          xor  a
0948: 77          ld   (hl),a
0949: 3C          inc  a
094A: 18 41       jr   $098D
094C: 3A 68 81    ld   a,($8168)
094F: 32 0E D5    ld   ($D50E),a
0952: 21 5F 81    ld   hl,$815F
0955: 3A 0B D4    ld   a,($D40B)
0958: CB 6F       bit  5,a
095A: CD 70 09    call $0970
095D: 3A 67 81    ld   a,($8167)
0960: A7          and  a
0961: C8          ret  z
0962: 3A 68 81    ld   a,($8168)
0965: 32 0E D5    ld   ($D50E),a
0968: 21 63 81    ld   hl,$8163
096B: 3A 0B D4    ld   a,($D40B)
096E: CB 67       bit  4,a
0970: 28 03       jr   z,$0975
0972: 36 01       ld   (hl),$01
0974: C9          ret
0975: 7E          ld   a,(hl)
0976: A7          and  a
0977: C8          ret  z
0978: 3E 87       ld   a,$87
097A: 32 0B D5    ld   ($D50B),a
097D: AF          xor  a
097E: 77          ld   (hl),a
097F: 23          inc  hl
0980: 3C          inc  a
0981: 86          add  a,(hl)
0982: 27          daa
0983: 77          ld   (hl),a
0984: 23          inc  hl
0985: BE          cp   (hl)
0986: C0          ret  nz
0987: 2B          dec  hl
0988: 36 00       ld   (hl),$00
098A: 23          inc  hl
098B: 23          inc  hl
098C: 7E          ld   a,(hl)
098D: 21 69 81    ld   hl,$8169
0990: 86          add  a,(hl)
0991: 27          daa
0992: FE 09       cp   $09
0994: 38 05       jr   c,$099B
0996: CD A2 0C    call $0CA2
0999: 3E 09       ld   a,$09
099B: 77          ld   (hl),a
099C: 3A 2B 84    ld   a,($842B)
099F: A7          and  a
09A0: C8          ret  z
09A1: 7E          ld   a,(hl)
09A2: E6 0F       and  $0F
09A4: 21 BD C7    ld   hl,$C7BD
09A7: 77          ld   (hl),a
09A8: 77          ld   (hl),a
09A9: C9          ret
09AA: CD A2 0C    call $0CA2
09AD: CD 8D 04    call $048D
09B0: 21 CA 09    ld   hl,$09CA
09B3: 11 AE C5    ld   de,$C5AE
09B6: 01 04 00    ld   bc,$0004
09B9: ED B0       ldir
09BB: 06 04       ld   b,$04
09BD: 21 00 00    ld   hl,$0000
09C0: 2B          dec  hl
09C1: 7C          ld   a,h
09C2: B5          or   l
09C3: 20 FB       jr   nz,$09C0
09C5: 10 F6       djnz $09BD
09C7: C3 03 00    jp   $0003
09CA: 1D          dec  e
09CB: 12          ld   (de),a
09CC: 15          dec  d
09CD: 1D          dec  e
09CE: 21 00 50    ld   hl,$5000
09D1: 22 6B 81    ld   ($816B),hl
09D4: AF          xor  a
09D5: 32 6D 81    ld   ($816D),a
09D8: CD 7B 08    call $087B
09DB: CD CA 08    call $08CA
09DE: CD D0 0B    call $0BD0
09E1: 3E 03       ld   a,$03
09E3: 32 56 81    ld   ($8156),a
09E6: 21 00 79    ld   hl,$7900
09E9: 11 00 D2    ld   de,$D200
09EC: 01 80 00    ld   bc,$0080
09EF: 41          ld   b,c
09F0: CD 92 07    call $0792
09F3: 3E 29       ld   a,$29
09F5: 32 D5 81    ld   ($81D5),a
09F8: 3E 03       ld   a,$03
09FA: 32 D6 81    ld   ($81D6),a
09FD: AF          xor  a
09FE: 32 1F 84    ld   ($841F),a
0A01: 21 40 7F    ld   hl,$7F40
0A04: 11 00 D5    ld   de,$D500
0A07: 01 10 00    ld   bc,$0010
0A0A: ED B0       ldir
0A0C: CD 8D 04    call $048D
0A0F: 21 00 C8    ld   hl,$C800
0A12: 36 FF       ld   (hl),$FF
0A14: 11 01 C8    ld   de,$C801
0A17: 01 FF 07    ld   bc,$07FF
0A1A: ED B0       ldir
0A1C: 21 75 81    ld   hl,$8175
0A1F: 36 00       ld   (hl),$00
0A21: 11 76 81    ld   de,$8176
0A24: 01 5F 00    ld   bc,$005F
0A27: ED B0       ldir
0A29: 21 1C 84    ld   hl,$841C
0A2C: 3E 01       ld   a,$01
0A2E: 77          ld   (hl),a
0A2F: 23          inc  hl
0A30: 77          ld   (hl),a
0A31: 23          inc  hl
0A32: 77          ld   (hl),a
0A33: 21 BB 83    ld   hl,$83BB
0A36: E5          push hl
0A37: AF          xor  a
0A38: 77          ld   (hl),a
0A39: 23          inc  hl
0A3A: 77          ld   (hl),a
0A3B: 23          inc  hl
0A3C: 77          ld   (hl),a
0A3D: 23          inc  hl
0A3E: 36 3F       ld   (hl),$3F
0A40: E1          pop  hl
0A41: 11 BF 83    ld   de,$83BF
0A44: 01 5C 00    ld   bc,$005C
0A47: ED B0       ldir
0A49: CD F8 07    call $07F8
0A4C: AF          xor  a
0A4D: 32 00 D3    ld   ($D300),a
0A50: C9          ret
0A51: 21 00 00    ld   hl,$0000
0A54: 22 2B 84    ld   ($842B),hl
0A57: 21 4B 84    ld   hl,$844B
0A5A: CB BE       res  7,(hl)
0A5C: CB B6       res  6,(hl)
0A5E: 21 2E 84    ld   hl,$842E
0A61: 36 00       ld   (hl),$00
0A63: 11 2F 84    ld   de,$842F
0A66: 01 0A 00    ld   bc,$000A
0A69: ED B0       ldir
0A6B: 21 C6 0A    ld   hl,$0AC6
0A6E: 3A 5C 81    ld   a,($815C)
0A71: A7          and  a
0A72: 28 12       jr   z,$0A86
0A74: 3A 5B 81    ld   a,($815B)
0A77: A7          and  a
0A78: 28 0B       jr   z,$0A85
0A7A: FE 01       cp   $01
0A7C: 28 06       jr   z,$0A84
0A7E: FE 02       cp   $02
0A80: 28 01       jr   z,$0A83
0A82: 23          inc  hl
0A83: 23          inc  hl
0A84: 23          inc  hl
0A85: 23          inc  hl
0A86: 00          nop
0A87: 7E          ld   a,(hl)
0A88: 32 25 84    ld   ($8425),a
0A8B: 32 26 84    ld   ($8426),a
0A8E: 21 01 01    ld   hl,$0101
0A91: 22 27 84    ld   ($8427),hl
0A94: 22 29 84    ld   ($8429),hl
0A97: 2A CB 0A    ld   hl,($0ACB)
0A9A: 22 2E 84    ld   ($842E),hl
0A9D: 22 31 84    ld   ($8431),hl
0AA0: 21 6E 81    ld   hl,$816E
0AA3: 36 00       ld   (hl),$00
0AA5: 11 6F 81    ld   de,$816F
0AA8: 01 06 00    ld   bc,$0006
0AAB: ED B0       ldir
0AAD: 21 55 C4    ld   hl,$C455
0AB0: 01 2B 00    ld   bc,$002B
0AB3: 3E FF       ld   a,$FF
0AB5: CD EB 03    call $03EB
0AB8: 3A 6A 81    ld   a,($816A)
0ABB: A7          and  a
0ABC: C4 03 05    call nz,$0503
0ABF: CD 33 04    call $0433
0AC2: CD 99 06    call $0699
0AC5: C9          ret
0AC6: FF          rst  $38
0AC7: 03          inc  bc
0AC8: 04          inc  b
0AC9: 05          dec  b
0ACA: 06 00       ld   b,$00
0ACC: 50          ld   d,b
0ACD: 3A 2B 84    ld   a,($842B)
0AD0: A7          and  a
0AD1: 20 06       jr   nz,$0AD9
0AD3: CD 45 04    call $0445
0AD6: CD 8D 10    call $108D
0AD9: 32 0D D5    ld   ($D50D),a
0ADC: 21 FF 82    ld   hl,$82FF
0ADF: 11 00 D5    ld   de,$D500
0AE2: 01 06 00    ld   bc,$0006
0AE5: ED B0       ldir
0AE7: 21 BB 83    ld   hl,$83BB
0AEA: 11 00 D1    ld   de,$D100
0AED: 01 40 00    ld   bc,$0040
0AF0: ED B0       ldir
0AF2: 11 60 D1    ld   de,$D160
0AF5: 01 20 00    ld   bc,$0020
0AF8: ED B0       ldir
0AFA: 3A 1C 84    ld   a,($841C)
0AFD: A7          and  a
0AFE: 28 0B       jr   z,$0B0B
0B00: 21 75 81    ld   hl,$8175
0B03: 11 00 D0    ld   de,$D000
0B06: 01 20 00    ld   bc,$0020
0B09: ED B0       ldir
0B0B: 3A 1D 84    ld   a,($841D)
0B0E: A7          and  a
0B0F: 28 11       jr   z,$0B22
0B11: 21 95 81    ld   hl,$8195
0B14: 11 21 D0    ld   de,$D021
0B17: 01 1F 00    ld   bc,$001F
0B1A: ED B0       ldir
0B1C: 3A B4 81    ld   a,($81B4)
0B1F: 32 20 D0    ld   ($D020),a
0B22: 3A 1E 84    ld   a,($841E)
0B25: A7          and  a
0B26: 28 0B       jr   z,$0B33
0B28: 21 B5 81    ld   hl,$81B5
0B2B: 11 40 D0    ld   de,$D040
0B2E: 01 20 00    ld   bc,$0020
0B31: ED B0       ldir
0B33: 21 1C 84    ld   hl,$841C
0B36: AF          xor  a
0B37: 77          ld   (hl),a
0B38: 23          inc  hl
0B39: 77          ld   (hl),a
0B3A: 23          inc  hl
0B3B: 77          ld   (hl),a
0B3C: 23          inc  hl
0B3D: 7E          ld   a,(hl)
0B3E: A7          and  a
0B3F: 28 0C       jr   z,$0B4D
0B41: 23          inc  hl
0B42: 46          ld   b,(hl)
0B43: 2A 21 84    ld   hl,($8421)
0B46: EB          ex   de,hl
0B47: 2A 23 84    ld   hl,($8423)
0B4A: CD 92 07    call $0792
0B4D: AF          xor  a
0B4E: 32 1F 84    ld   ($841F),a
0B51: 2A D5 81    ld   hl,($81D5)
0B54: 22 06 D5    ld   ($D506),hl
0B57: 3A 5A 83    ld   a,($835A)
0B5A: A7          and  a
0B5B: 20 1D       jr   nz,$0B7A
0B5D: 21 58 84    ld   hl,$8458
0B60: 11 B1 C4    ld   de,$C4B1
0B63: 01 0C 00    ld   bc,$000C
0B66: ED B0       ldir
0B68: 21 37 84    ld   hl,$8437
0B6B: 56          ld   d,(hl)
0B6C: 23          inc  hl
0B6D: 5E          ld   e,(hl)
0B6E: 21 00 CD    ld   hl,$CD00
0B71: 06 40       ld   b,$40
0B73: 1A          ld   a,(de)
0B74: 77          ld   (hl),a
0B75: 77          ld   (hl),a
0B76: 23          inc  hl
0B77: 13          inc  de
0B78: 10 F9       djnz $0B73
0B7A: E6 80       and  $80
0B7C: C0          ret  nz
0B7D: CD 11 11    call $1111
0B80: C9          ret
0B81: 21 25 84    ld   hl,$8425
0B84: 3A 56 81    ld   a,($8156)
0B87: A7          and  a
0B88: C0          ret  nz
0B89: 23          inc  hl
0B8A: 13          inc  de
0B8B: C9          ret
0B8C: 01 01 05    ld   bc,$0501
0B8F: C5          push bc
0B90: 21 1F 84    ld   hl,$841F
0B93: 36 FF       ld   (hl),$FF
0B95: 23          inc  hl
0B96: 36 40       ld   (hl),$40
0B98: 11 00 D2    ld   de,$D200
0B9B: ED 53 21 84 ld   ($8421),de
0B9F: 21 36 7D    ld   hl,$7D36
0BA2: CD AE 0B    call $0BAE
0BA5: 5E          ld   e,(hl)
0BA6: 23          inc  hl
0BA7: 56          ld   d,(hl)
0BA8: ED 53 23 84 ld   ($8423),de
0BAC: C1          pop  bc
0BAD: C9          ret
0BAE: 78          ld   a,b
0BAF: 07          rlca
0BB0: 07          rlca
0BB1: 07          rlca
0BB2: CB 01       rlc  c
0BB4: 81          add  a,c
0BB5: 4F          ld   c,a
0BB6: 06 00       ld   b,$00
0BB8: 09          add  hl,bc
0BB9: C9          ret

read_joystick_0bba:
0BBA: 3A 2B 84    ld   a,($842B)
0BBD: A7          and  a
0BBE: C0          ret  nz
0BBF: 21 08 D4    ld   hl,joy_port_1_d408
0BC2: 3A 59 81    ld   a,($8159)
0BC5: A7          and  a
0BC6: 28 03       jr   z,$0BCB
0BC8: CD 84 0B    call $0B84
0BCB: 7E          ld   a,(hl)
0BCC: 32 D8 81    ld   ($81D8),a
0BCF: C9          ret

0BD0: 3E C3       ld   a,$C3
0BD2: 32 42 84    ld   ($8442),a
0BD5: 21 07 3F    ld   hl,$3F07
0BD8: 22 0E D4    ld   ($D40E),hl
0BDB: 97          sub  a
0BDC: 32 3B 84    ld   ($843B),a
0BDF: 06 07       ld   b,$07
0BE1: 21 00 00    ld   hl,$0000
0BE4: CD EC 0B    call $0BEC
0BE7: 06 0E       ld   b,$0E
0BE9: 21 08 00    ld   hl,$0008
0BEC: 22 0E D4    ld   ($D40E),hl
0BEF: 2C          inc  l
0BF0: 7D          ld   a,l
0BF1: B8          cp   b
0BF2: C2 EC 0B    jp   nz,$0BEC
0BF5: C9          ret
0BF6: CD B0 0C    call $0CB0
0BF9: CD 00 0C    call music_sequencer_0c00
0BFC: CD A9 0C    call $0CA9
0BFF: C9          ret

music_sequencer_0c00:
0C00: 21 45 84    ld   hl,$8445
0C03: 35          dec  (hl)
0C04: CB 46       bit  0,(hl)
0C06: C8          ret  z
0C07: 21 3D 84    ld   hl,$843D
0C0A: 35          dec  (hl)
0C0B: 3A 3B 84    ld   a,($843B)
0C0E: A7          and  a
0C0F: FA 19 0C    jp   m,$0C19
0C12: C2 42 84    jp   nz,$8442
0C15: 00          nop
0C16: 00          nop
0C17: 00          nop
0C18: C9          ret
0C19: FE 80       cp   $80
0C1B: CA DB 0B    jp   z,$0BDB
0C1E: FE 83       cp   $83
0C20: D2 DB 0B    jp   nc,$0BDB
0C23: F5          push af
0C24: CD DB 0B    call $0BDB
0C27: F1          pop  af
0C28: E6 7F       and  $7F
0C2A: 32 3B 84    ld   ($843B),a
0C2D: 47          ld   b,a
0C2E: 87          add  a,a
0C2F: 80          add  a,b
0C30: 5F          ld   e,a
0C31: 16 00       ld   d,$00
0C33: 21 92 0C    ld   hl,$0C92
0C36: 19          add  hl,de
0C37: 5E          ld   e,(hl)
0C38: 23          inc  hl
0C39: 56          ld   d,(hl)
0C3A: 23          inc  hl
0C3B: 7E          ld   a,(hl)
0C3C: EB          ex   de,hl
0C3D: 22 3E 84    ld   ($843E),hl
0C40: 22 40 84    ld   ($8440),hl
0C43: 32 3C 84    ld   ($843C),a
0C46: 7E          ld   a,(hl)
0C47: E6 7F       and  $7F
0C49: 32 3D 84    ld   ($843D),a
0C4C: 23          inc  hl
0C4D: 7E          ld   a,(hl)
0C4E: 32 0E D4    ld   ($D40E),a
0C51: 23          inc  hl
0C52: FE 07       cp   $07
0C54: 7E          ld   a,(hl)
0C55: 20 02       jr   nz,$0C59
0C57: E6 3F       and  $3F
0C59: 32 0F D4    ld   ($D40F),a
0C5C: 23          inc  hl
0C5D: 7E          ld   a,(hl)
0C5E: A7          and  a
0C5F: F2 4E 0C    jp   p,$0C4E
0C62: 22 40 84    ld   ($8440),hl
0C65: 21 6C 0C    ld   hl,$0C6C
0C68: 22 43 84    ld   ($8443),hl
0C6B: C9          ret
0C6C: 3A 3D 84    ld   a,($843D)
0C6F: A7          and  a
0C70: 28 01       jr   z,$0C73
0C72: C9          ret
0C73: 2A 40 84    ld   hl,($8440)
0C76: 7E          ld   a,(hl)
0C77: D6 80       sub  $80
0C79: 20 CE       jr   nz,$0C49
0C7B: 3A 3C 84    ld   a,($843C)
0C7E: FE FF       cp   $FF
0C80: 28 07       jr   z,$0C89
0C82: 3D          dec  a
0C83: 32 3C 84    ld   ($843C),a
0C86: CA DB 0B    jp   z,$0BDB
0C89: 2A 3E 84    ld   hl,($843E)
0C8C: 22 40 84    ld   ($8440),hl
0C8F: 21 73 0C    ld   hl,$0C73
0C92: C3 68 0C    jp   $0C68

0C9E: F6 01       or   $01
0CA0: 18 21       jr   $0CC3
0CA2: 3A 68 81    ld   a,($8168)
0CA5: E6 FE       and  $FE
0CA7: 18 1A       jr   $0CC3
0CA9: 3A 68 81    ld   a,($8168)
0CAC: E6 7F       and  $7F
0CAE: 18 13       jr   $0CC3
0CB0: 3A 68 81    ld   a,($8168)
0CB3: F6 80       or   $80
0CB5: 18 0C       jr   $0CC3
0CB7: 3A 68 81    ld   a,($8168)
0CBA: F6 02       or   $02
0CBC: 18 05       jr   $0CC3
0CBE: 3A 68 81    ld   a,($8168)
0CC1: E6 FD       and  $FD
0CC3: 32 68 81    ld   ($8168),a
0CC6: 32 0E D5    ld   ($D50E),a
0CC9: C9          ret
0CCA: 21 6E 81    ld   hl,$816E
0CCD: 3A 56 81    ld   a,($8156)
0CD0: A7          and  a
0CD1: 20 03       jr   nz,$0CD6
0CD3: 21 71 81    ld   hl,$8171
0CD6: 7E          ld   a,(hl)
0CD7: A7          and  a
0CD8: CC DC 0C    call z,$0CDC
0CDB: C9          ret
0CDC: 21 EC 0C    ld   hl,$0CEC
0CDF: 06 07       ld   b,$07
0CE1: 5E          ld   e,(hl)
0CE2: 23          inc  hl
0CE3: 56          ld   d,(hl)
0CE4: 23          inc  hl
0CE5: ED 53 0E D4 ld   ($D40E),de
0CE9: 10 F6       djnz $0CE1
0CEB: C9          ret
0CEC: 00          nop
0CED: 60          ld   h,b
0CEE: 01 00 07    ld   bc,$0700
0CF1: FE 08       cp   $08
0CF3: 10 0B       djnz $0D00
0CF5: 00          nop
0CF6: 0C          inc  c
0CF7: 10 0D       djnz $0D06
0CF9: 00          nop
0CFA: 0E FF       ld   c,$FF
0CFC: D9          exx
0CFD: 3E FF       ld   a,$FF
0CFF: 32 5A 83    ld   ($835A),a
0D02: 21 7F 7F    ld   hl,$7F7F
0D05: 22 2B 84    ld   ($842B),hl
0D08: 3E 8A       ld   a,$8A
0D0A: 32 0B D5    ld   ($D50B),a
0D0D: 3E 00       ld   a,$00
0D0F: CF          rst  $08
0D10: FB          ei
0D11: 00          nop
0D12: 00          nop
0D13: 00          nop
0D14: 00          nop
0D15: 00          nop
0D16: 00          nop
0D17: 18 FB       jr   $0D14
0D19: 3E 01       ld   a,$01
0D1B: F7          rst  $30
0D1C: CD 8C 0B    call $0B8C
0D1F: CD B7 0C    call $0CB7
0D22: 3E 01       ld   a,$01
0D24: CF          rst  $08
0D25: 3E FF       ld   a,$FF
0D27: 32 5A 83    ld   ($835A),a
0D2A: 3A 2C 84    ld   a,($842C)
0D2D: FE 00       cp   $00
0D2F: CA A2 0D    jp   z,$0DA2
0D32: 21 00 00    ld   hl,$0000
0D35: 22 35 84    ld   ($8435),hl
0D38: 21 01 01    ld   hl,$0101
0D3B: 22 29 84    ld   ($8429),hl
0D3E: CD B4 04    call $04B4
0D41: 3E 28       ld   a,$28
0D43: F7          rst  $30
0D44: 21 E3 C4    ld   hl,$C4E3
0D47: 11 70 7D    ld   de,$7D70
0D4A: CD E4 02    call $02E4
0D4D: 3E 14       ld   a,$14
0D4F: F7          rst  $30
0D50: 21 44 C5    ld   hl,$C544
0D53: 11 8D 7D    ld   de,$7D8D
0D56: CD E4 02    call $02E4
0D59: 3E 14       ld   a,$14
0D5B: F7          rst  $30
0D5C: 21 6E C6    ld   hl,$C66E
0D5F: 11 67 7E    ld   de,$7E67
0D62: CD E4 02    call $02E4
0D65: 3E 28       ld   a,$28
0D67: F7          rst  $30
0D68: 21 86 C5    ld   hl,$C586
0D6B: 11 79 7E    ld   de,$7E79
0D6E: CD E4 02    call $02E4
0D71: 3E 14       ld   a,$14
0D73: F7          rst  $30
0D74: 21 8C C5    ld   hl,$C58C
0D77: 11 8F 7E    ld   de,$7E8F
0D7A: CD E4 02    call $02E4
0D7D: 3E 14       ld   a,$14
0D7F: F7          rst  $30
0D80: 21 90 C5    ld   hl,$C590
0D83: 11 96 7E    ld   de,$7E96
0D86: CD E4 02    call $02E4
0D89: 3E 14       ld   a,$14
0D8B: F7          rst  $30
0D8C: 21 96 C5    ld   hl,$C596
0D8F: 11 AC 7E    ld   de,$7EAC
0D92: CD E4 02    call $02E4
0D95: 3E 80       ld   a,$80
0D97: F7          rst  $30
0D98: 11 D0 7E    ld   de,$7ED0
0D9B: ED 53 39 84 ld   ($8439),de
0D9F: 3E 02       ld   a,$02
0DA1: CF          rst  $08
0DA2: ED 5B 39 84 ld   de,($8439)
0DA6: 1A          ld   a,(de)
0DA7: 13          inc  de
0DA8: 47          ld   b,a
0DA9: E6 E0       and  $E0
0DAB: 07          rlca
0DAC: 07          rlca
0DAD: 07          rlca
0DAE: A7          and  a
0DAF: 28 1A       jr   z,$0DCB
0DB1: 32 27 84    ld   ($8427),a
0DB4: 3E FF       ld   a,$FF
0DB6: 32 D8 81    ld   ($81D8),a
0DB9: 3E 01       ld   a,$01
0DBB: F7          rst  $30
0DBC: 78          ld   a,b
0DBD: E6 3F       and  $3F
0DBF: 32 D8 81    ld   ($81D8),a
0DC2: 1A          ld   a,(de)
0DC3: 13          inc  de
0DC4: ED 53 39 84 ld   ($8439),de
0DC8: F7          rst  $30
0DC9: 18 D7       jr   $0DA2
0DCB: DF          rst  $18
0DCC: 3E 01       ld   a,$01
0DCE: CF          rst  $08
0DCF: ED 53 39 84 ld   ($8439),de
0DD3: 3E FF       ld   a,$FF
0DD5: 32 5A 83    ld   ($835A),a
0DD8: 78          ld   a,b
0DD9: A7          and  a
0DDA: C2 9F 0D    jp   nz,$0D9F
0DDD: CD 8C 0B    call $0B8C
0DE0: 3E 01       ld   a,$01
0DE2: F7          rst  $30
0DE3: 3E FF       ld   a,$FF
0DE5: 32 2C 84    ld   ($842C),a
0DE8: CD 49 05    call $0549
0DEB: 3E 80       ld   a,$80
0DED: F7          rst  $30
0DEE: C3 25 0D    jp   $0D25
0DF1: 3E 01       ld   a,$01
0DF3: F7          rst  $30
0DF4: 3A 69 81    ld   a,($8169)
0DF7: A7          and  a
0DF8: 20 02       jr   nz,$0DFC
0DFA: 18 F5       jr   $0DF1
0DFC: DF          rst  $18
0DFD: CD 8C 0B    call $0B8C
0E00: 3E 01       ld   a,$01
0E02: F7          rst  $30
0E03: 3A 69 81    ld   a,($8169)
0E06: FE 01       cp   $01
0E08: 20 05       jr   nz,$0E0F
0E0A: CD E1 05    call $05E1
0E0D: 18 03       jr   $0E12
0E0F: CD FB 05    call $05FB
0E12: 3E FF       ld   a,$FF
0E14: 32 5A 83    ld   ($835A),a
0E17: DF          rst  $18
0E18: 21 69 81    ld   hl,$8169
0E1B: 3A 0B D4    ld   a,($D40B)
0E1E: CB 77       bit  6,a
0E20: 28 06       jr   z,$0E28
0E22: CB 7F       bit  7,a
0E24: 28 09       jr   z,$0E2F
0E26: 18 D8       jr   $0E00
0E28: AF          xor  a
0E29: 32 6A 81    ld   ($816A),a
0E2C: 35          dec  (hl)
0E2D: 18 0E       jr   $0E3D
0E2F: 7E          ld   a,(hl)
0E30: FE 02       cp   $02
0E32: 30 02       jr   nc,$0E36
0E34: 18 BB       jr   $0DF1
0E36: 3E 01       ld   a,$01
0E38: 32 6A 81    ld   ($816A),a
0E3B: 35          dec  (hl)
0E3C: 35          dec  (hl)
0E3D: 3E 01       ld   a,$01
0E3F: F7          rst  $30
0E40: CD 9B 0C    call $0C9B
0E43: 3E 8B       ld   a,$8B
0E45: 32 0B D5    ld   ($D50B),a
0E48: CD 51 0A    call $0A51
0E4B: 3E 02       ld   a,$02
0E4D: CF          rst  $08
0E4E: 3E 01       ld   a,$01
0E50: D7          rst  $10
0E51: 3E 01       ld   a,$01
0E53: F7          rst  $30
0E54: CD 9C 04    call update_scrolling_049c
0E57: 21 35 84    ld   hl,$8435
0E5A: 11 27 84    ld   de,$8427
0E5D: CD 84 0B    call $0B84
0E60: E5          push hl
0E61: 1A          ld   a,(de)
0E62: FE 04       cp   $04
0E64: 28 04       jr   z,$0E6A
0E66: 3E 3C       ld   a,$3C
0E68: 18 02       jr   $0E6C
0E6A: 3E 14       ld   a,$14
0E6C: 32 2D 84    ld   ($842D),a
0E6F: 1A          ld   a,(de)
0E70: 4F          ld   c,a
0E71: 06 00       ld   b,$00
0E73: 21 4F 7F    ld   hl,$7F4F
0E76: 09          add  hl,bc
0E77: EB          ex   de,hl
0E78: 21 52 7F    ld   hl,$7F52
0E7B: CB 01       rlc  c
0E7D: 09          add  hl,bc
0E7E: C1          pop  bc
0E7F: 0A          ld   a,(bc)
0E80: A7          and  a
0E81: 1A          ld   a,(de)
0E82: F5          push af
0E83: DD E1       pop  ix
0E85: 5E          ld   e,(hl)
0E86: 23          inc  hl
0E87: 56          ld   d,(hl)
0E88: EB          ex   de,hl
0E89: 01 00 08    ld   bc,$0800
0E8C: 3E 07       ld   a,$07
0E8E: CF          rst  $08
0E8F: 3E 07       ld   a,$07
0E91: E7          rst  $20
0E92: 3E 01       ld   a,$01
0E94: F7          rst  $30
0E95: DD E5       push ix
0E97: CD 0F 0A    call $0A0F
0E9A: 21 27 84    ld   hl,$8427
0E9D: 3A 56 81    ld   a,($8156)
0EA0: A7          and  a
0EA1: 28 05       jr   z,$0EA8
0EA3: 3A 29 84    ld   a,($8429)
0EA6: 18 04       jr   $0EAC
0EA8: 23          inc  hl
0EA9: 3A 2A 84    ld   a,($842A)
0EAC: 46          ld   b,(hl)
0EAD: 4F          ld   c,a
0EAE: CD 8F 0B    call $0B8F
0EB1: 00          nop
0EB2: 00          nop
0EB3: 00          nop
0EB4: 3A 56 81    ld   a,($8156)
0EB7: 47          ld   b,a
0EB8: F1          pop  af
0EB9: CF          rst  $08
0EBA: 3A 2B 84    ld   a,($842B)
0EBD: A7          and  a
0EBE: 20 38       jr   nz,$0EF8
0EC0: 3A 5C 81    ld   a,($815C)
0EC3: A7          and  a
0EC4: 28 03       jr   z,$0EC9
0EC6: 3E 03       ld   a,$03
0EC8: CF          rst  $08
0EC9: CD 6A 06    call $066A
0ECC: CD B7 0C    call $0CB7
0ECF: 21 27 84    ld   hl,$8427
0ED2: 11 35 84    ld   de,$8435
0ED5: CD 84 0B    call $0B84
0ED8: 1A          ld   a,(de)
0ED9: A7          and  a
0EDA: 7E          ld   a,(hl)
0EDB: 20 0B       jr   nz,$0EE8
0EDD: FE 01       cp   $01
0EDF: 20 07       jr   nz,$0EE8
0EE1: 3E 81       ld   a,$81
0EE3: 32 0B D5    ld   ($D50B),a
0EE6: 18 10       jr   $0EF8
0EE8: FE 04       cp   $04
0EEA: 20 07       jr   nz,$0EF3
0EEC: 3E B1       ld   a,$B1
0EEE: 32 0B D5    ld   ($D50B),a
0EF1: 18 05       jr   $0EF8
0EF3: 3E 81       ld   a,$81
0EF5: 32 3B 84    ld   ($843B),a
0EF8: 3E 00       ld   a,$00
0EFA: E7          rst  $20
0EFB: 3E 01       ld   a,$01
0EFD: F7          rst  $30
0EFE: DF          rst  $18
0EFF: 00          nop
0F00: 00          nop
0F01: 00          nop
0F02: 3A 2B 84    ld   a,($842B)
0F05: A7          and  a
0F06: 28 0A       jr   z,$0F12
0F08: AF          xor  a
0F09: 32 2C 84    ld   ($842C),a
0F0C: 3E 00       ld   a,$00
0F0E: CF          rst  $08
0F0F: C3 51 0E    jp   $0E51
0F12: 21 25 84    ld   hl,$8425
0F15: 11 35 84    ld   de,$8435
0F18: CD 84 0B    call $0B84
0F1B: 3A 34 84    ld   a,($8434)
0F1E: A7          and  a
0F1F: 12          ld   (de),a
0F20: C2 A7 0F    jp   nz,$0FA7
0F23: E5          push hl
0F24: D1          pop  de
0F25: 23          inc  hl
0F26: 23          inc  hl
0F27: 34          inc  (hl)
0F28: 7E          ld   a,(hl)
0F29: FE 05       cp   $05
0F2B: DA 51 0E    jp   c,$0E51
0F2E: 36 01       ld   (hl),$01
0F30: 23          inc  hl
0F31: 23          inc  hl
0F32: 34          inc  (hl)
0F33: 7E          ld   a,(hl)
0F34: FE 05       cp   $05
0F36: 38 02       jr   c,$0F3A
0F38: 36 04       ld   (hl),$04
0F3A: 21 89 C5    ld   hl,$C589
0F3D: 11 31 06    ld   de,$0631
0F40: 0E 08       ld   c,$08
0F42: CD D5 02    call $02D5
0F45: 3E 44       ld   a,$44
0F47: CF          rst  $08
0F48: 3A 5C 81    ld   a,($815C)
0F4B: A7          and  a
0F4C: 28 06       jr   z,$0F54
0F4E: 3A 5A 81    ld   a,($815A)
0F51: A7          and  a
0F52: 20 0B       jr   nz,$0F5F
0F54: 3E 69       ld   a,$69
0F56: E7          rst  $20
0F57: 3E 01       ld   a,$01
0F59: F7          rst  $30
0F5A: 11 2E 84    ld   de,$842E
0F5D: 18 33       jr   $0F92
0F5F: 21 A5 10    ld   hl,$10A5
0F62: FE 01       cp   $01
0F64: 28 0A       jr   z,$0F70
0F66: 23          inc  hl
0F67: 23          inc  hl
0F68: 23          inc  hl
0F69: FE 02       cp   $02
0F6B: 28 03       jr   z,$0F70
0F6D: 23          inc  hl
0F6E: 23          inc  hl
0F6F: 23          inc  hl
0F70: 3E 69       ld   a,$69
0F72: E7          rst  $20
0F73: 3E 01       ld   a,$01
0F75: F7          rst  $30
0F76: 22 47 84    ld   ($8447),hl
0F79: AF          xor  a
0F7A: 32 74 81    ld   ($8174),a
0F7D: 3E 01       ld   a,$01
0F7F: F7          rst  $30
0F80: CD CA 0C    call $0CCA
0F83: 2A 47 84    ld   hl,($8447)
0F86: CD 9B 10    call $109B
0F89: 21 7C 10    ld   hl,$107C
0F8C: CD 6D 07    call $076D
0F8F: D2 7D 0F    jp   nc,$0F7D
0F92: 3E 69       ld   a,$69
0F94: E7          rst  $20
0F95: 3E 3C       ld   a,$3C
0F97: F7          rst  $30
0F98: 21 CB 0A    ld   hl,$0ACB
0F9B: 7E          ld   a,(hl)
0F9C: 12          ld   (de),a
0F9D: 13          inc  de
0F9E: 23          inc  hl
0F9F: 7E          ld   a,(hl)
0FA0: 12          ld   (de),a
0FA1: 3E 3C       ld   a,$3C
0FA3: F7          rst  $30
0FA4: C3 51 0E    jp   $0E51
0FA7: 35          dec  (hl)
0FA8: 28 21       jr   z,$0FCB
0FAA: AF          xor  a
0FAB: 32 2B 84    ld   ($842B),a
0FAE: CD 99 06    call $0699
0FB1: 3A 6A 81    ld   a,($816A)
0FB4: A7          and  a
0FB5: 28 06       jr   z,$0FBD
0FB7: CD 4C 08    call $084C
0FBA: CD 03 05    call $0503
0FBD: 21 B6 C7    ld   hl,$C7B6
0FC0: 01 08 00    ld   bc,$0008
0FC3: 3E FF       ld   a,$FF
0FC5: CD EB 03    call $03EB
0FC8: C3 51 0E    jp   $0E51
0FCB: 3E 80       ld   a,$80
0FCD: 32 3B 84    ld   ($843B),a
0FD0: DF          rst  $18
0FD1: 3E 3C       ld   a,$3C
0FD3: F7          rst  $30
0FD4: 3E FF       ld   a,$FF
0FD6: 32 2B 84    ld   ($842B),a
0FD9: CD E0 04    call $04E0
0FDC: CD AE 10    call $10AE
0FDF: 3A 6A 81    ld   a,($816A)
0FE2: A7          and  a
0FE3: 28 4D       jr   z,$1032
0FE5: 3A 56 81    ld   a,($8156)
0FE8: A7          and  a
0FE9: 20 27       jr   nz,$1012
0FEB: 21 4C 06    ld   hl,$064C
0FEE: 11 00 86    ld   de,$8600
0FF1: 01 15 00    ld   bc,$0015
0FF4: ED B0       ldir
0FF6: 3E 02       ld   a,$02
0FF8: 32 08 86    ld   ($8608),a
0FFB: 21 25 C6    ld   hl,$C625
0FFE: 11 00 86    ld   de,$8600
1001: 0E 02       ld   c,$02
1003: CD D5 02    call $02D5
1006: 3E 3C       ld   a,$3C
1008: F7          rst  $30
1009: 3A 25 84    ld   a,($8425)
100C: A7          and  a
100D: C2 AA 0F    jp   nz,$0FAA
1010: 18 15       jr   $1027
1012: 21 25 C6    ld   hl,$C625
1015: 11 4C 06    ld   de,$064C
1018: 0E 02       ld   c,$02
101A: CD D5 02    call $02D5
101D: 3E 3C       ld   a,$3C
101F: F7          rst  $30
1020: 3A 26 84    ld   a,($8426)
1023: A7          and  a
1024: C2 AA 0F    jp   nz,$0FAA
1027: CD 8C 0B    call $0B8C
102A: CD 9C 04    call update_scrolling_049c
102D: 06 03       ld   b,$03
102F: CD 74 08    call $0874
1032: 21 8B C5    ld   hl,$C58B
1035: 11 41 06    ld   de,$0641
1038: 0E 02       ld   c,$02
103A: CD D5 02    call $02D5
103D: 3E 7E       ld   a,$7E
103F: F7          rst  $30
1040: CD 9C 04    call update_scrolling_049c
1043: 3E 03       ld   a,$03
1045: 32 56 81    ld   ($8156),a
1048: CD 0F 0A    call $0A0F
104B: 21 7F 7F    ld   hl,$7F7F
104E: 22 2B 84    ld   ($842B),hl
1051: 3E 01       ld   a,$01
1053: 32 0C D5    ld   ($D50C),a
1056: 3E 00       ld   a,$00
1058: CF          rst  $08
1059: 3E 02       ld   a,$02
105B: D7          rst  $10
105C: 3A 2D 84    ld   a,($842D)
105F: F7          rst  $30
1060: 21 7C 10    ld   hl,$107C
1063: CD 6D 07    call $076D
1066: DA 6B 10    jp   c,$106B
1069: 18 F1       jr   $105C
106B: CD 81 0B    call $0B81
106E: 36 00       ld   (hl),$00
1070: 3E FF       ld   a,$FF
1072: 32 5A 83    ld   ($835A),a
1075: D9          exx
1076: 0E 02       ld   c,$02
1078: D9          exx
1079: C3 CB 0F    jp   $0FCB
107C: 10 00       djnz $107E
107E: 00          nop
107F: 20 00       jr   nz,$1081
1081: 00          nop
1082: 30 00       jr   nc,$1084
1084: 00          nop
1085: FF          rst  $38
1086: 8A          adc  a,d
1087: 8B          adc  a,e
1088: 8C          adc  a,h
1089: 8D          adc  a,l
108A: 8E          adc  a,(hl)
108B: FF          rst  $38
108C: FF          rst  $38
108D: 21 74 81    ld   hl,$8174
1090: 7E          ld   a,(hl)
1091: A7          and  a
1092: C8          ret  z
1093: 35          dec  (hl)
1094: 21 A5 10    ld   hl,$10A5
1097: CD 9B 10    call $109B
109A: C9          ret
109B: CD 43 07    call $0743
109E: CD 2D 04    call $042D
10A1: CD DA 06    call $06DA
10A4: C9          ret
10A5: 10 00       djnz $10A7
10A7: 00          nop
10A8: 20 00       jr   nz,$10AA
10AA: 00          nop
10AB: 30 00       jr   nc,$10AD
10AD: 00          nop
10AE: 21 1F 05    ld   hl,$051F
10B1: 11 4B C4    ld   de,$C44B
10B4: 01 0A 00    ld   bc,$000A
10B7: ED B0       ldir
10B9: CD B2 06    call $06B2
10BC: CD 25 04    call $0425
10BF: C9          ret
10C0: 3E 01       ld   a,$01
10C2: F7          rst  $30
10C3: ED 43 47 84 ld   ($8447),bc
10C7: 22 49 84    ld   ($8449),hl
10CA: 11 00 90    ld   de,$9000
10CD: CD 03 11    call $1103
10D0: 21 E0 97    ld   hl,$97E0
10D3: 01 20 00    ld   bc,$0020
10D6: CD EA 03    call $03EA
10D9: 3E 01       ld   a,$01
10DB: F7          rst  $30
10DC: 11 00 98    ld   de,$9800
10DF: CD 03 11    call $1103
10E2: 21 E0 9F    ld   hl,$9FE0
10E5: 01 20 00    ld   bc,$0020
10E8: CD EA 03    call $03EA
10EB: 3E 01       ld   a,$01
10ED: F7          rst  $30
10EE: 11 00 A0    ld   de,$A000
10F1: CD 03 11    call $1103
10F4: 21 E0 A7    ld   hl,$A7E0
10F7: 01 20 00    ld   bc,$0020
10FA: CD EA 03    call $03EA
10FD: 3E 07       ld   a,$07
10FF: EF          rst  $28
1100: 3E 07       ld   a,$07
1102: D7          rst  $10
1103: ED 4B 47 84 ld   bc,($8447)
1107: 2A 49 84    ld   hl,($8449)
110A: CD 9A 07    call $079A
110D: 22 49 84    ld   ($8449),hl
1110: C9          ret
1111: 0E 02       ld   c,$02
1113: 11 05 83    ld   de,$8305
1116: 21 F9 81    ld   hl,$81F9
1119: D9          exx
111A: 11 20 00    ld   de,$0020
111D: 26 C8       ld   h,$C8
111F: 3A 54 83    ld   a,($8354)
1122: 6F          ld   l,a
1123: D9          exx
1124: 85          add  a,l
1125: 30 01       jr   nc,$1128
1127: 24          inc  h
1128: 6F          ld   l,a
1129: 06 1C       ld   b,$1C
112B: 1A          ld   a,(de)
112C: 13          inc  de
112D: D9          exx
112E: 77          ld   (hl),a
112F: 77          ld   (hl),a
1130: 19          add  hl,de
1131: D9          exx
1132: 10 F7       djnz $112B
1134: 06 04       ld   b,$04
1136: 1A          ld   a,(de)
1137: 77          ld   (hl),a
1138: 13          inc  de
1139: 3E 20       ld   a,$20
113B: 85          add  a,l
113C: 30 01       jr   nc,$113F
113E: 24          inc  h
113F: 6F          ld   l,a
1140: 10 F4       djnz $1136
1142: 0D          dec  c
1143: 20 0C       jr   nz,$1151
1145: 21 47 83    ld   hl,$8347
1148: 7E          ld   a,(hl)
1149: 3C          inc  a
114A: FE 04       cp   $04
114C: 38 01       jr   c,$114F
114E: AF          xor  a
114F: 77          ld   (hl),a
1150: C9          ret
1151: 21 79 82    ld   hl,$8279
1154: D9          exx
1155: 26 CC       ld   h,$CC
1157: 3A 55 83    ld   a,($8355)
115A: 18 C6       jr   $1122
115C: D9          exx
115D: 21 47 83    ld   hl,$8347
1160: 47          ld   b,a
1161: 11 0A 13    ld   de,$130A
1164: CB 7F       bit  7,a
1166: 28 02       jr   z,$116A
1168: ED 44       neg
116A: E6 0F       and  $0F
116C: 07          rlca
116D: 07          rlca
116E: 86          add  a,(hl)
116F: 6F          ld   l,a
1170: 26 00       ld   h,$00
1172: 19          add  hl,de
1173: 7E          ld   a,(hl)
1174: CB 78       bit  7,b
1176: 28 02       jr   z,$117A
1178: ED 44       neg
117A: D9          exx
117B: C9          ret
117C: 3E 01       ld   a,$01
117E: F7          rst  $30
117F: 21 45 83    ld   hl,$8345
1182: 11 48 83    ld   de,$8348
1185: 7E          ld   a,(hl)
1186: 23          inc  hl
1187: CD DE 02    call $02DE
118A: 12          ld   (de),a
118B: 13          inc  de
118C: 47          ld   b,a
118D: 86          add  a,(hl)
118E: FE 08       cp   $08
1190: 38 03       jr   c,$1195
1192: 05          dec  b
1193: D6 08       sub  $08
1195: 77          ld   (hl),a
1196: 78          ld   a,b
1197: 12          ld   (de),a
1198: CD A1 11    call $11A1
119B: CD 9F 12    call $129F
119E: C3 7C 11    jp   $117C
11A1: 21 05 83    ld   hl,$8305
11A4: 0E 02       ld   c,$02
11A6: FD 21 FB 82 ld   iy,$82FB
11AA: DD 21 48 83 ld   ix,$8348
11AE: DD 7E 00    ld   a,(ix+$00)
11B1: ED 44       neg
11B3: FD 56 00    ld   d,(iy+$00)
11B6: 82          add  a,d
11B7: FD 77 00    ld   (iy+$00),a
11BA: E6 F8       and  $F8
11BC: 5F          ld   e,a
11BD: 7A          ld   a,d
11BE: E6 F8       and  $F8
11C0: BB          cp   e
11C1: CA 31 12    jp   z,$1231
11C4: 3A 5A 83    ld   a,($835A)
11C7: E6 7F       and  $7F
11C9: CA 37 12    jp   z,$1237
11CC: E6 02       and  $02
11CE: C2 11 12    jp   nz,$1211
11D1: 79          ld   a,c
11D2: FE 02       cp   $02
11D4: CA F0 11    jp   z,$11F0
11D7: 06 08       ld   b,$08
11D9: DD 56 06    ld   d,(ix+$06)
11DC: DD 5E 08    ld   e,(ix+$08)
11DF: 1A          ld   a,(de)
11E0: 77          ld   (hl),a
11E1: 13          inc  de
11E2: 23          inc  hl
11E3: 10 FA       djnz $11DF
11E5: 06 18       ld   b,$18
11E7: 3E FF       ld   a,$FF
11E9: 77          ld   (hl),a
11EA: 23          inc  hl
11EB: 10 FC       djnz $11E9
11ED: C3 45 12    jp   $1245
11F0: DD 56 06    ld   d,(ix+$06)
11F3: DD 5E 08    ld   e,(ix+$08)
11F6: 06 14       ld   b,$14
11F8: 3E FF       ld   a,$FF
11FA: 77          ld   (hl),a
11FB: 23          inc  hl
11FC: 10 FC       djnz $11FA
11FE: 06 08       ld   b,$08
1200: 1A          ld   a,(de)
1201: 77          ld   (hl),a
1202: 13          inc  de
1203: 23          inc  hl
1204: 10 FA       djnz $1200
1206: 3E FF       ld   a,$FF
1208: 06 04       ld   b,$04
120A: 77          ld   (hl),a
120B: 23          inc  hl
120C: 10 FC       djnz $120A
120E: C3 45 12    jp   $1245
1211: 06 06       ld   b,$06
1213: DD 56 06    ld   d,(ix+$06)
1216: DD 5E 08    ld   e,(ix+$08)
1219: 1A          ld   a,(de)
121A: 77          ld   (hl),a
121B: 13          inc  de
121C: 23          inc  hl
121D: 10 FA       djnz $1219
121F: 3E FF       ld   a,$FF
1221: 06 10       ld   b,$10
1223: 77          ld   (hl),a
1224: 23          inc  hl
1225: 10 FC       djnz $1223
1227: 06 0A       ld   b,$0A
1229: 1A          ld   a,(de)
122A: 77          ld   (hl),a
122B: 13          inc  de
122C: 23          inc  hl
122D: 10 FA       djnz $1229
122F: 18 14       jr   $1245
1231: 11 20 00    ld   de,$0020
1234: 19          add  hl,de
1235: 18 52       jr   $1289
1237: DD 56 06    ld   d,(ix+$06)
123A: DD 5E 08    ld   e,(ix+$08)
123D: 06 20       ld   b,$20
123F: 1A          ld   a,(de)
1240: 77          ld   (hl),a
1241: 13          inc  de
1242: 23          inc  hl
1243: 10 FA       djnz $123F
1245: E5          push hl
1246: DD 66 02    ld   h,(ix+$02)
1249: DD 6E 04    ld   l,(ix+$04)
124C: 7E          ld   a,(hl)
124D: BA          cp   d
124E: 20 25       jr   nz,$1275
1250: 23          inc  hl
1251: 7E          ld   a,(hl)
1252: BB          cp   e
1253: 20 20       jr   nz,$1275
1255: DD 7E 0A    ld   a,(ix+$0a)
1258: 3D          dec  a
1259: 28 0A       jr   z,$1265
125B: DD 77 0A    ld   (ix+$0a),a
125E: 2B          dec  hl
125F: 2B          dec  hl
1260: 5E          ld   e,(hl)
1261: 2B          dec  hl
1262: 56          ld   d,(hl)
1263: 18 10       jr   $1275
1265: 23          inc  hl
1266: 7E          ld   a,(hl)
1267: DD 77 0A    ld   (ix+$0a),a
126A: 23          inc  hl
126B: 56          ld   d,(hl)
126C: 23          inc  hl
126D: 5E          ld   e,(hl)
126E: 23          inc  hl
126F: DD 74 02    ld   (ix+$02),h
1272: DD 75 04    ld   (ix+$04),l
1275: DD 73 08    ld   (ix+$08),e
1278: DD 72 06    ld   (ix+$06),d
127B: E1          pop  hl
127C: DD 56 0E    ld   d,(ix+$0e)
127F: DD 5E 10    ld   e,(ix+$10)
1282: 13          inc  de
1283: DD 72 0E    ld   (ix+$0e),d
1286: DD 73 10    ld   (ix+$10),e
1289: FD 7E 00    ld   a,(iy+$00)
128C: 0F          rrca
128D: 0F          rrca
128E: 0F          rrca
128F: E6 1F       and  $1F
1291: DD 77 0C    ld   (ix+$0c),a
1294: FD 23       inc  iy
1296: FD 23       inc  iy
1298: DD 23       inc  ix
129A: 0D          dec  c
129B: C2 AE 11    jp   nz,$11AE
129E: C9          ret
129F: DD 21 F9 82 ld   ix,$82F9
12A3: 3A 57 81    ld   a,($8157)
12A6: A7          and  a
12A7: 28 05       jr   z,$12AE
12A9: 11 DA 12    ld   de,$12DA
12AC: 18 03       jr   $12B1
12AE: 11 F2 12    ld   de,$12F2
12B1: 06 03       ld   b,$03
12B3: DD 7E 00    ld   a,(ix+$00)
12B6: 6F          ld   l,a
12B7: E6 F8       and  $F8
12B9: 4F          ld   c,a
12BA: 7D          ld   a,l
12BB: E6 07       and  $07
12BD: 6F          ld   l,a
12BE: 26 00       ld   h,$00
12C0: 19          add  hl,de
12C1: 7E          ld   a,(hl)
12C2: 81          add  a,c
12C3: DD 77 06    ld   (ix+$06),a
12C6: DD 23       inc  ix
12C8: DD 7E 00    ld   a,(ix+$00)
12CB: C6 F0       add  a,$F0
12CD: DD 77 06    ld   (ix+$06),a
12D0: DD 23       inc  ix
12D2: 21 08 00    ld   hl,$0008
12D5: 19          add  hl,de
12D6: EB          ex   de,hl
12D7: 10 DA       djnz $12B3
12D9: C9          ret

134A: C5          push bc
134B: DD 21 48 83 ld   ix,$8348
134F: 3E 08       ld   a,$08
1351: DD 77 00    ld   (ix+$00),a
1354: 3D          dec  a
1355: DD 77 01    ld   (ix+$01),a
1358: 3A 5A 83    ld   a,($835A)
135B: F6 80       or   $80
135D: 32 5A 83    ld   ($835A),a
1360: 06 02       ld   b,$02
1362: 7E          ld   a,(hl)
1363: DD 77 0A    ld   (ix+$0a),a
1366: 23          inc  hl
1367: 7E          ld   a,(hl)
1368: DD 77 06    ld   (ix+$06),a
136B: 23          inc  hl
136C: 7E          ld   a,(hl)
136D: DD 77 08    ld   (ix+$08),a
1370: 23          inc  hl
1371: DD 74 02    ld   (ix+$02),h
1374: DD 75 04    ld   (ix+$04),l
1377: EB          ex   de,hl
1378: DD 23       inc  ix
137A: 10 E6       djnz $1362
137C: AF          xor  a
137D: 32 45 83    ld   ($8345),a
1380: 32 46 83    ld   ($8346),a
1383: 21 FB 82    ld   hl,$82FB
1386: 06 04       ld   b,$04
1388: 77          ld   (hl),a
1389: 23          inc  hl
138A: 10 FC       djnz $1388
138C: 21 00 00    ld   hl,$0000
138F: 22 56 83    ld   ($8356),hl
1392: 22 58 83    ld   ($8358),hl
1395: C1          pop  bc
1396: 18 06       jr   $139E
1398: C5          push bc
1399: CD A1 11    call $11A1
139C: C1          pop  bc
139D: 0B          dec  bc
139E: 78          ld   a,b
139F: B1          or   c
13A0: 20 F6       jr   nz,$1398
13A2: 2A 56 83    ld   hl,($8356)
13A5: E5          push hl
13A6: 2A 58 83    ld   hl,($8358)
13A9: E5          push hl
13AA: 3E 08       ld   a,$08
13AC: 32 49 83    ld   ($8349),a
13AF: 06 20       ld   b,$20
13B1: C5          push bc
13B2: CD A1 11    call $11A1
13B5: CD 11 11    call $1111
13B8: C1          pop  bc
13B9: 10 F6       djnz $13B1
13BB: E1          pop  hl
13BC: 22 58 83    ld   ($8358),hl
13BF: E1          pop  hl
13C0: 22 56 83    ld   ($8356),hl
13C3: CD 9F 12    call $129F
13C6: 3A 5A 83    ld   a,($835A)
13C9: E6 7F       and  $7F
13CB: 32 5A 83    ld   ($835A),a
13CE: 06 2D       ld   b,$2D
13D0: 21 00 C4    ld   hl,$C400
13D3: 11 1F 00    ld   de,$001F
13D6: 78          ld   a,b
13D7: 06 20       ld   b,$20
13D9: 77          ld   (hl),a
13DA: 77          ld   (hl),a
13DB: 19          add  hl,de
13DC: 77          ld   (hl),a
13DD: 77          ld   (hl),a
13DE: 23          inc  hl
13DF: 10 F8       djnz $13D9
13E1: C9          ret
13E2: 21 5B 83    ld   hl,$835B
13E5: 11 BB 83    ld   de,$83BB
13E8: 06 18       ld   b,$18
13EA: D9          exx
13EB: 3A 57 81    ld   a,($8157)
13EE: A7          and  a
13EF: 28 05       jr   z,$13F6
13F1: 11 0F FF    ld   de,$FF0F
13F4: 18 03       jr   $13F9
13F6: 11 12 01    ld   de,$0112
13F9: D9          exx
13FA: 7E          ld   a,(hl)
13FB: 23          inc  hl
13FC: E6 01       and  $01
13FE: 28 07       jr   z,$1407
1400: 7E          ld   a,(hl)
1401: FE F8       cp   $F8
1403: 38 2F       jr   c,$1434
1405: 18 05       jr   $140C
1407: 7E          ld   a,(hl)
1408: FE F8       cp   $F8
140A: 30 28       jr   nc,$1434
140C: D9          exx
140D: 82          add  a,d
140E: D9          exx
140F: 12          ld   (de),a
1410: 13          inc  de
1411: 23          inc  hl
1412: 7E          ld   a,(hl)
1413: 23          inc  hl
1414: E6 01       and  $01
1416: 28 07       jr   z,$141F
1418: 7E          ld   a,(hl)
1419: FE F0       cp   $F0
141B: 38 1A       jr   c,$1437
141D: 18 05       jr   $1424
141F: 7E          ld   a,(hl)
1420: FE F0       cp   $F0
1422: 30 13       jr   nc,$1437
1424: D9          exx
1425: 83          add  a,e
1426: D9          exx
1427: 12          ld   (de),a
1428: 13          inc  de
1429: 13          inc  de
142A: 13          inc  de
142B: 23          inc  hl
142C: 10 CC       djnz $13FA
142E: 3E 01       ld   a,$01
1430: F7          rst  $30
1431: C3 E2 13    jp   $13E2
1434: 13          inc  de
1435: 23          inc  hl
1436: 23          inc  hl
1437: 3E E8       ld   a,$E8
1439: 18 E9       jr   $1424

14C0: C3 ED 14    jp   $14ED
14C3: C3 0C 17    jp   $170C
14C6: C3 51 17    jp   $1751
14C9: C3 9A 17    jp   $179A
14CC: C3 E2 17    jp   $17E2
14CF: C3 CF 18    jp   $18CF
14D2: C3 90 1A    jp   $1A90
14D5: C3 BF 1A    jp   $1ABF
14D8: C3 20 1B    jp   $1B20
14DB: C3 8C 1B    jp   $1B8C
14DE: C3 17 1C    jp   $1C17
14E1: C3 38 1C    jp   $1C38
14E4: C3 4B 1D    jp   $1D4B
14E7: C3 87 1D    jp   $1D87
14EA: C3 00 1F    jp   $1F00
14ED: 3E 01       ld   a,$01
14EF: F7          rst  $30
14F0: 08          ex   af,af'
14F1: 3E 80       ld   a,$80
14F3: 32 3B 84    ld   ($843B),a
14F6: 06 00       ld   b,$00
14F8: CD D8 02    call $02D8
14FB: 3E 08       ld   a,$08
14FD: 32 00 D3    ld   ($D300),a
1500: AF          xor  a
1501: 21 98 84    ld   hl,$8498
1504: 06 40       ld   b,$40
1506: 77          ld   (hl),a
1507: 23          inc  hl
1508: 10 FC       djnz $1506
150A: 21 5B 83    ld   hl,$835B
150D: 06 C0       ld   b,$C0
150F: 77          ld   (hl),a
1510: 23          inc  hl
1511: 10 FC       djnz $150F
1513: 3E 3F       ld   a,$3F
1515: 06 18       ld   b,$18
1517: 11 04 00    ld   de,$0004
151A: 21 BE 83    ld   hl,$83BE
151D: 77          ld   (hl),a
151E: 19          add  hl,de
151F: 10 FC       djnz $151D
1521: 3E 01       ld   a,$01
1523: 32 98 84    ld   ($8498),a
1526: 32 9E 84    ld   ($849E),a
1529: 3E 04       ld   a,$04
152B: 32 99 84    ld   ($8499),a
152E: 3E 0F       ld   a,$0F
1530: 32 AA 84    ld   ($84AA),a
1533: 32 AB 84    ld   ($84AB),a
1536: 32 AC 84    ld   ($84AC),a
1539: 3A D8 81    ld   a,($81D8)
153C: 32 A8 84    ld   ($84A8),a
153F: 21 00 46    ld   hl,$4600
1542: 22 B8 84    ld   ($84B8),hl
1545: 22 BC 84    ld   ($84BC),hl
1548: 22 C0 84    ld   ($84C0),hl
154B: 22 BA 84    ld   ($84BA),hl
154E: 22 BE 84    ld   ($84BE),hl
1551: 22 C2 84    ld   ($84C2),hl
1554: 79          ld   a,c
1555: FE 01       cp   $01
1557: 20 05       jr   nz,$155E
1559: 21 00 4A    ld   hl,$4A00
155C: 18 15       jr   $1573
155E: FE 02       cp   $02
1560: 20 05       jr   nz,$1567
1562: 21 10 4A    ld   hl,$4A10
1565: 18 0C       jr   $1573
1567: FE 03       cp   $03
1569: 20 05       jr   nz,$1570
156B: 21 20 4A    ld   hl,$4A20
156E: 18 03       jr   $1573
1570: 21 30 4A    ld   hl,$4A30
1573: 11 C6 84    ld   de,$84C6
1576: 01 10 00    ld   bc,$0010
1579: ED B0       ldir
157B: 3E 02       ld   a,$02
157D: 32 5A 83    ld   ($835A),a
1580: 08          ex   af,af'
1581: 28 59       jr   z,$15DC
1583: 08          ex   af,af'
1584: 3A 2B 84    ld   a,($842B)
1587: B7          or   a
1588: 20 05       jr   nz,$158F
158A: 3E 81       ld   a,$81
158C: 32 3B 84    ld   ($843B),a
158F: 3E 32       ld   a,$32
1591: 32 98 84    ld   ($8498),a
1594: 3E 01       ld   a,$01
1596: 32 99 84    ld   ($8499),a
1599: 3E 02       ld   a,$02
159B: 32 AA 84    ld   ($84AA),a
159E: 3E 01       ld   a,$01
15A0: 32 A4 84    ld   ($84A4),a
15A3: 3E 50       ld   a,$50
15A5: 32 5C 83    ld   ($835C),a
15A8: 32 60 83    ld   ($8360),a
15AB: 3E 78       ld   a,$78
15AD: 32 5E 83    ld   ($835E),a
15B0: D6 10       sub  $10
15B2: 32 62 83    ld   ($8362),a
15B5: 3E 31       ld   a,$31
15B7: 32 BE 83    ld   ($83BE),a
15BA: 3C          inc  a
15BB: 32 C2 83    ld   ($83C2),a
15BE: 3A 56 81    ld   a,($8156)
15C1: B7          or   a
15C2: 28 0C       jr   z,$15D0
15C4: 3A D9 81    ld   a,($81D9)
15C7: 47          ld   b,a
15C8: 3A DB 81    ld   a,($81DB)
15CB: E6 C0       and  $C0
15CD: 4F          ld   c,a
15CE: 18 2B       jr   $15FB
15D0: 3A DD 81    ld   a,($81DD)
15D3: 47          ld   b,a
15D4: 3A DF 81    ld   a,($81DF)
15D7: E6 C0       and  $C0
15D9: 4F          ld   c,a
15DA: 18 1F       jr   $15FB
15DC: 08          ex   af,af'
15DD: 3E B0       ld   a,$B0
15DF: 32 5C 83    ld   ($835C),a
15E2: 32 60 83    ld   ($8360),a
15E5: 3E 80       ld   a,$80
15E7: 32 5E 83    ld   ($835E),a
15EA: D6 10       sub  $10
15EC: 32 62 83    ld   ($8362),a
15EF: 3E 3B       ld   a,$3B
15F1: 32 BE 83    ld   ($83BE),a
15F4: 3C          inc  a
15F5: 32 C2 83    ld   ($83C2),a
15F8: 01 00 00    ld   bc,$0000
15FB: C5          push bc
15FC: 21 B0 40    ld   hl,$40B0
15FF: 11 F0 40    ld   de,$40F0
1602: CD DB 02    call $02DB
1605: C1          pop  bc
1606: 78          ld   a,b
1607: 32 56 83    ld   ($8356),a
160A: 79          ld   a,c
160B: 32 58 83    ld   ($8358),a
160E: 08          ex   af,af'
160F: 20 12       jr   nz,$1623
1611: 21 5A CC    ld   hl,$CC5A
1614: 11 00 40    ld   de,$4000
1617: CD E4 02    call $02E4
161A: 21 B4 CD    ld   hl,$CDB4
161D: 11 92 40    ld   de,$4092
1620: CD E4 02    call $02E4
1623: 06 70       ld   b,$70
1625: CD D8 02    call $02D8
1628: 11 04 00    ld   de,$0004
162B: 21 74 83    ld   hl,$8374
162E: 01 48 06    ld   bc,$0648
1631: 71          ld   (hl),c
1632: 19          add  hl,de
1633: 10 FC       djnz $1631
1635: 3A 84 83    ld   a,($8384)
1638: 3C          inc  a
1639: 32 84 83    ld   ($8384),a
163C: 3A 88 83    ld   a,($8388)
163F: C6 04       add  a,$04
1641: 32 88 83    ld   ($8388),a
1644: 21 8C 83    ld   hl,$838C
1647: 01 9E 06    ld   bc,$069E
164A: 71          ld   (hl),c
164B: 19          add  hl,de
164C: 10 FC       djnz $164A
164E: 21 8B 83    ld   hl,$838B
1651: 01 FF 06    ld   bc,$06FF
1654: 71          ld   (hl),c
1655: 19          add  hl,de
1656: 10 FC       djnz $1654
1658: 3A 9C 83    ld   a,($839C)
165B: 3C          inc  a
165C: 32 9C 83    ld   ($839C),a
165F: 3A A0 83    ld   a,($83A0)
1662: C6 04       add  a,$04
1664: 32 A0 83    ld   ($83A0),a
1667: 21 A4 83    ld   hl,$83A4
166A: 01 F4 06    ld   bc,$06F4
166D: 71          ld   (hl),c
166E: 19          add  hl,de
166F: 10 FC       djnz $166D
1671: 3A B4 83    ld   a,($83B4)
1674: 3C          inc  a
1675: 32 B4 83    ld   ($83B4),a
1678: 3A B8 83    ld   a,($83B8)
167B: C6 04       add  a,$04
167D: 32 B8 83    ld   ($83B8),a
1680: 21 76 83    ld   hl,$8376
1683: 3E C0       ld   a,$C0
1685: 06 06       ld   b,$06
1687: 0E 10       ld   c,$10
1689: 77          ld   (hl),a
168A: 19          add  hl,de
168B: 91          sub  c
168C: 10 FB       djnz $1689
168E: 21 8E 83    ld   hl,$838E
1691: 3E C0       ld   a,$C0
1693: 06 06       ld   b,$06
1695: 77          ld   (hl),a
1696: 19          add  hl,de
1697: 91          sub  c
1698: 10 FB       djnz $1695
169A: 21 A6 83    ld   hl,$83A6
169D: 3E C0       ld   a,$C0
169F: 06 06       ld   b,$06
16A1: 77          ld   (hl),a
16A2: 19          add  hl,de
16A3: 91          sub  c
16A4: 10 FB       djnz $16A1
16A6: 21 A5 83    ld   hl,$83A5
16A9: 01 FF 06    ld   bc,$06FF
16AC: 71          ld   (hl),c
16AD: 19          add  hl,de
16AE: 10 FC       djnz $16AC
16B0: 21 D6 83    ld   hl,$83D6
16B3: 01 21 12    ld   bc,$1221
16B6: 71          ld   (hl),c
16B7: 19          add  hl,de
16B8: 10 FC       djnz $16B6
16BA: 3E 05       ld   a,$05
16BC: CF          rst  $08
16BD: 3E 05       ld   a,$05
16BF: D7          rst  $10
16C0: 3E 01       ld   a,$01
16C2: F7          rst  $30
16C3: 06 F0       ld   b,$F0
16C5: CD D8 02    call $02D8
16C8: 3E 04       ld   a,$04
16CA: CF          rst  $08
16CB: 3E 05       ld   a,$05
16CD: CF          rst  $08
16CE: 3E 09       ld   a,$09
16D0: CF          rst  $08
16D1: 3E 0A       ld   a,$0A
16D3: CF          rst  $08
16D4: 3E 0B       ld   a,$0B
16D6: CF          rst  $08
16D7: 3E 0C       ld   a,$0C
16D9: CF          rst  $08
16DA: 3E 0D       ld   a,$0D
16DC: CF          rst  $08
16DD: 3E 0E       ld   a,$0E
16DF: CF          rst  $08
16E0: 3E 12       ld   a,$12
16E2: CF          rst  $08
16E3: 3E 15       ld   a,$15
16E5: CF          rst  $08
16E6: 3E 16       ld   a,$16
16E8: CF          rst  $08
16E9: 3A A4 84    ld   a,($84A4)
16EC: B7          or   a
16ED: 20 17       jr   nz,$1706
16EF: 3A 2B 84    ld   a,($842B)
16F2: B7          or   a
16F3: 20 11       jr   nz,$1706
16F5: 3E C0       ld   a,$C0
16F7: F7          rst  $30
16F8: 3E 2F       ld   a,$2F
16FA: 32 BE 83    ld   ($83BE),a
16FD: 3C          inc  a
16FE: 32 C2 83    ld   ($83C2),a
1701: 3E 81       ld   a,$81
1703: 32 3B 84    ld   ($843B),a
1706: 3E 10       ld   a,$10
1708: CF          rst  $08
1709: 3E 08       ld   a,$08
170B: D7          rst  $10
170C: 3E 01       ld   a,$01
170E: F7          rst  $30
170F: 3A 48 83    ld   a,($8348)
1712: 4F          ld   c,a
1713: 3A 98 84    ld   a,($8498)
1716: CB 67       bit  4,a
1718: 28 03       jr   z,$171D
171A: CD 29 17    call $1729
171D: 3A 98 84    ld   a,($8498)
1720: CB 6F       bit  5,a
1722: 28 03       jr   z,$1727
1724: CD 3D 17    call $173D
1727: 18 E3       jr   $170C
1729: 11 04 00    ld   de,$0004
172C: 21 74 83    ld   hl,$8374
172F: 06 12       ld   b,$12
1731: 7E          ld   a,(hl)
1732: 81          add  a,c
1733: 30 03       jr   nc,$1738
1735: 2B          dec  hl
1736: 34          inc  (hl)
1737: 23          inc  hl
1738: 77          ld   (hl),a
1739: 19          add  hl,de
173A: 10 F5       djnz $1731
173C: C9          ret
173D: 11 04 00    ld   de,$0004
1740: 21 5C 83    ld   hl,$835C
1743: 06 02       ld   b,$02
1745: 7E          ld   a,(hl)
1746: 81          add  a,c
1747: 30 03       jr   nc,$174C
1749: 2B          dec  hl
174A: 34          inc  (hl)
174B: 23          inc  hl
174C: 77          ld   (hl),a
174D: 19          add  hl,de
174E: 10 F5       djnz $1745
1750: C9          ret
1751: 3A C6 84    ld   a,($84C6)
1754: F7          rst  $30
1755: 2A B8 84    ld   hl,($84B8)
1758: D9          exx
1759: 21 73 83    ld   hl,$8373
175C: 11 D5 83    ld   de,$83D5
175F: D9          exx
1760: DD 21 AE 84 ld   ix,$84AE
1764: DD 36 00 06 ld   (ix+$00),$06
1768: 3A AA 84    ld   a,($84AA)
176B: DD 77 01    ld   (ix+$01),a
176E: CD 2A 18    call $182A
1771: 22 B8 84    ld   ($84B8),hl
1774: 3A 9C 84    ld   a,($849C)
1777: B7          or   a
1778: 28 1E       jr   z,$1798
177A: 2A BA 84    ld   hl,($84BA)
177D: 22 B8 84    ld   ($84B8),hl
1780: AF          xor  a
1781: 32 9C 84    ld   ($849C),a
1784: 3A 98 84    ld   a,($8498)
1787: E6 02       and  $02
1789: B7          or   a
178A: 28 0C       jr   z,$1798
178C: 3A 99 84    ld   a,($8499)
178F: CB 47       bit  0,a
1791: 28 05       jr   z,$1798
1793: 3E A1       ld   a,$A1
1795: 32 0B D5    ld   ($D50B),a
1798: 18 B7       jr   $1751
179A: 3A C7 84    ld   a,($84C7)
179D: F7          rst  $30
179E: 2A BC 84    ld   hl,($84BC)
17A1: D9          exx
17A2: 21 8B 83    ld   hl,$838B
17A5: 11 ED 83    ld   de,$83ED
17A8: D9          exx
17A9: DD 21 AE 84 ld   ix,$84AE
17AD: DD 36 00 06 ld   (ix+$00),$06
17B1: 3A AB 84    ld   a,($84AB)
17B4: DD 77 01    ld   (ix+$01),a
17B7: CD 2A 18    call $182A
17BA: 22 BC 84    ld   ($84BC),hl
17BD: 3A 9C 84    ld   a,($849C)
17C0: B7          or   a
17C1: 28 1D       jr   z,$17E0
17C3: 2A BE 84    ld   hl,($84BE)
17C6: 22 BC 84    ld   ($84BC),hl
17C9: AF          xor  a
17CA: 32 9C 84    ld   ($849C),a
17CD: 3A 98 84    ld   a,($8498)
17D0: E6 02       and  $02
17D2: 28 0C       jr   z,$17E0
17D4: 3A 99 84    ld   a,($8499)
17D7: CB 4F       bit  1,a
17D9: 28 05       jr   z,$17E0
17DB: 3E A1       ld   a,$A1
17DD: 32 0B D5    ld   ($D50B),a
17E0: 18 B8       jr   $179A
17E2: 3A C8 84    ld   a,($84C8)
17E5: F7          rst  $30
17E6: 2A C0 84    ld   hl,($84C0)
17E9: D9          exx
17EA: 21 A3 83    ld   hl,$83A3
17ED: 11 05 84    ld   de,$8405
17F0: D9          exx
17F1: DD 21 AE 84 ld   ix,$84AE
17F5: DD 36 00 06 ld   (ix+$00),$06
17F9: 3A AC 84    ld   a,($84AC)
17FC: DD 77 01    ld   (ix+$01),a
17FF: CD 2A 18    call $182A
1802: 22 C0 84    ld   ($84C0),hl
1805: 3A 9C 84    ld   a,($849C)
1808: B7          or   a
1809: 28 1D       jr   z,$1828
180B: 2A C2 84    ld   hl,($84C2)
180E: 22 C0 84    ld   ($84C0),hl
1811: AF          xor  a
1812: 32 9C 84    ld   ($849C),a
1815: 3A 98 84    ld   a,($8498)
1818: E6 02       and  $02
181A: 28 0C       jr   z,$1828
181C: 3A 99 84    ld   a,($8499)
181F: CB 57       bit  2,a
1821: 28 05       jr   z,$1828
1823: 3E A1       ld   a,$A1
1825: 32 0B D5    ld   ($D50B),a
1828: 18 B8       jr   $17E2
182A: 46          ld   b,(hl)
182B: 23          inc  hl
182C: 4E          ld   c,(hl)
182D: 23          inc  hl
182E: 56          ld   d,(hl)
182F: 23          inc  hl
1830: 5E          ld   e,(hl)
1831: 23          inc  hl
1832: E5          push hl
1833: D9          exx
1834: 7E          ld   a,(hl)
1835: 23          inc  hl
1836: D9          exx
1837: 67          ld   h,a
1838: D9          exx
1839: 7E          ld   a,(hl)
183A: 2B          dec  hl
183B: D9          exx
183C: 6F          ld   l,a
183D: C5          push bc
183E: 48          ld   c,b
183F: CB 78       bit  7,b
1841: 28 04       jr   z,$1847
1843: 06 FF       ld   b,$FF
1845: 18 02       jr   $1849
1847: 06 00       ld   b,$00
1849: 09          add  hl,bc
184A: 7C          ld   a,h
184B: E6 01       and  $01
184D: D9          exx
184E: 77          ld   (hl),a
184F: 23          inc  hl
1850: D9          exx
1851: 7D          ld   a,l
1852: DD 77 02    ld   (ix+$02),a
1855: D9          exx
1856: 77          ld   (hl),a
1857: 23          inc  hl
1858: D9          exx
1859: C1          pop  bc
185A: D9          exx
185B: 7E          ld   a,(hl)
185C: 23          inc  hl
185D: D9          exx
185E: 67          ld   h,a
185F: D9          exx
1860: 7E          ld   a,(hl)
1861: 2B          dec  hl
1862: D9          exx
1863: 6F          ld   l,a
1864: C5          push bc
1865: CB 79       bit  7,c
1867: 28 04       jr   z,$186D
1869: 06 FF       ld   b,$FF
186B: 18 02       jr   $186F
186D: 06 00       ld   b,$00
186F: 09          add  hl,bc
1870: 7C          ld   a,h
1871: E6 01       and  $01
1873: D9          exx
1874: 77          ld   (hl),a
1875: 23          inc  hl
1876: D9          exx
1877: 7D          ld   a,l
1878: DD 77 03    ld   (ix+$03),a
187B: D9          exx
187C: 77          ld   (hl),a
187D: 23          inc  hl
187E: D9          exx
187F: C1          pop  bc
1880: DD 7E 00    ld   a,(ix+$00)
1883: DD BE 01    cp   (ix+$01)
1886: 20 1E       jr   nz,$18A6
1888: 7A          ld   a,d
1889: 32 BE 83    ld   ($83BE),a
188C: 3C          inc  a
188D: 32 C2 83    ld   ($83C2),a
1890: DD 7E 02    ld   a,(ix+$02)
1893: 32 5C 83    ld   ($835C),a
1896: 32 60 83    ld   ($8360),a
1899: DD 7E 03    ld   a,(ix+$03)
189C: D6 08       sub  $08
189E: 32 5E 83    ld   ($835E),a
18A1: D6 10       sub  $10
18A3: 32 62 83    ld   ($8362),a
18A6: E1          pop  hl
18A7: 7B          ld   a,e
18A8: B7          or   a
18A9: 20 07       jr   nz,$18B2
18AB: 3E 01       ld   a,$01
18AD: 32 9C 84    ld   ($849C),a
18B0: 18 1C       jr   $18CE
18B2: 7B          ld   a,e
18B3: E6 C0       and  $C0
18B5: 07          rlca
18B6: 07          rlca
18B7: D9          exx
18B8: 12          ld   (de),a
18B9: 13          inc  de
18BA: D9          exx
18BB: 7B          ld   a,e
18BC: E6 3F       and  $3F
18BE: D9          exx
18BF: 12          ld   (de),a
18C0: 13          inc  de
18C1: 13          inc  de
18C2: 13          inc  de
18C3: D9          exx
18C4: AF          xor  a
18C5: 32 9C 84    ld   ($849C),a
18C8: DD 35 00    dec  (ix+$00)
18CB: C2 2A 18    jp   nz,$182A
18CE: C9          ret
18CF: 3E 01       ld   a,$01
18D1: F7          rst  $30
18D2: 3A 5C 83    ld   a,($835C)
18D5: FE 60       cp   $60
18D7: 30 23       jr   nc,$18FC
18D9: 3E 07       ld   a,$07
18DB: 32 45 83    ld   ($8345),a
18DE: 3A 98 84    ld   a,($8498)
18E1: CB E7       set  4,a
18E3: 32 98 84    ld   ($8498),a
18E6: 3A 5C 83    ld   a,($835C)
18E9: FE 30       cp   $30
18EB: 30 0F       jr   nc,$18FC
18ED: 3E 07       ld   a,$07
18EF: 32 45 83    ld   ($8345),a
18F2: 3A 98 84    ld   a,($8498)
18F5: F6 90       or   $90
18F7: 32 98 84    ld   ($8498),a
18FA: 18 25       jr   $1921
18FC: 3A 99 84    ld   a,($8499)
18FF: CB 47       bit  0,a
1901: 28 05       jr   z,$1908
1903: 21 74 83    ld   hl,$8374
1906: 18 10       jr   $1918
1908: CB 4F       bit  1,a
190A: 28 05       jr   z,$1911
190C: 21 8C 83    ld   hl,$838C
190F: 18 07       jr   $1918
1911: CB 57       bit  2,a
1913: 28 BA       jr   z,$18CF
1915: 21 A4 83    ld   hl,$83A4
1918: 7E          ld   a,(hl)
1919: FE B4       cp   $B4
191B: 38 04       jr   c,$1921
191D: AF          xor  a
191E: 32 45 83    ld   ($8345),a
1921: 3A 99 84    ld   a,($8499)
1924: CB 57       bit  2,a
1926: 20 0C       jr   nz,$1934
1928: CB 47       bit  0,a
192A: C2 82 19    jp   nz,$1982
192D: CB 4F       bit  1,a
192F: C2 C2 19    jp   nz,$19C2
1932: 18 9B       jr   $18CF
1934: 21 73 83    ld   hl,$8373
1937: 3A 5E 83    ld   a,($835E)
193A: 4F          ld   c,a
193B: 3A 5C 83    ld   a,($835C)
193E: CD 54 1A    call $1A54
1941: 78          ld   a,b
1942: 32 AA 84    ld   ($84AA),a
1945: FE 0F       cp   $0F
1947: CA F1 19    jp   z,$19F1
194A: 3E 32       ld   a,$32
194C: 32 98 84    ld   ($8498),a
194F: 3E 01       ld   a,$01
1951: 32 99 84    ld   ($8499),a
1954: AF          xor  a
1955: 32 9B 84    ld   ($849B),a
1958: 3E 11       ld   a,$11
195A: D7          rst  $10
195B: 06 0A       ld   b,$0A
195D: 3A 74 81    ld   a,($8174)
1960: 80          add  a,b
1961: 32 74 81    ld   ($8174),a
1964: 3A 9D 84    ld   a,($849D)
1967: B7          or   a
1968: 28 15       jr   z,$197F
196A: 3A C6 83    ld   a,($83C6)
196D: FE 1A       cp   $1A
196F: 20 0E       jr   nz,$197F
1971: 06 0A       ld   b,$0A
1973: 3A 74 81    ld   a,($8174)
1976: 80          add  a,b
1977: 32 74 81    ld   ($8174),a
197A: 3E B9       ld   a,$B9
197C: 32 0B D5    ld   ($D50B),a
197F: C3 F1 19    jp   $19F1
1982: 21 8B 83    ld   hl,$838B
1985: 3A 5E 83    ld   a,($835E)
1988: 4F          ld   c,a
1989: 3A 5C 83    ld   a,($835C)
198C: CD 54 1A    call $1A54
198F: 78          ld   a,b
1990: 32 AB 84    ld   ($84AB),a
1993: FE 0F       cp   $0F
1995: CA F1 19    jp   z,$19F1
1998: 3A 9A 84    ld   a,($849A)
199B: B7          or   a
199C: 20 08       jr   nz,$19A6
199E: 3E 01       ld   a,$01
19A0: 32 9A 84    ld   ($849A),a
19A3: CD 46 1A    call $1A46
19A6: 3E 32       ld   a,$32
19A8: 32 98 84    ld   ($8498),a
19AB: 3E 02       ld   a,$02
19AD: 32 99 84    ld   ($8499),a
19B0: AF          xor  a
19B1: 32 9B 84    ld   ($849B),a
19B4: 3E 11       ld   a,$11
19B6: D7          rst  $10
19B7: 06 0A       ld   b,$0A
19B9: 3A 74 81    ld   a,($8174)
19BC: 80          add  a,b
19BD: 32 74 81    ld   ($8174),a
19C0: 18 2F       jr   $19F1
19C2: 21 A3 83    ld   hl,$83A3
19C5: 3A 5E 83    ld   a,($835E)
19C8: 4F          ld   c,a
19C9: 3A 5C 83    ld   a,($835C)
19CC: CD 54 1A    call $1A54
19CF: 78          ld   a,b
19D0: 32 AC 84    ld   ($84AC),a
19D3: FE 0F       cp   $0F
19D5: 28 1A       jr   z,$19F1
19D7: 3E 32       ld   a,$32
19D9: 32 98 84    ld   ($8498),a
19DC: 3E 04       ld   a,$04
19DE: 32 99 84    ld   ($8499),a
19E1: AF          xor  a
19E2: 32 9B 84    ld   ($849B),a
19E5: 3E 11       ld   a,$11
19E7: D7          rst  $10
19E8: 06 0A       ld   b,$0A
19EA: 3A 74 81    ld   a,($8174)
19ED: 80          add  a,b
19EE: 32 74 81    ld   ($8174),a
19F1: 3A 98 84    ld   a,($8498)
19F4: E6 08       and  $08
19F6: 20 4B       jr   nz,$1A43
19F8: 3A 63 83    ld   a,($8363)
19FB: B7          or   a
19FC: 20 45       jr   nz,$1A43
19FE: 3A C6 83    ld   a,($83C6)
1A01: FE 1A       cp   $1A
1A03: 20 3E       jr   nz,$1A43
1A05: 21 64 83    ld   hl,$8364
1A08: 3A 5C 83    ld   a,($835C)
1A0B: 96          sub  (hl)
1A0C: FE 14       cp   $14
1A0E: 30 33       jr   nc,$1A43
1A10: FE 00       cp   $00
1A12: 38 2F       jr   c,$1A43
1A14: 23          inc  hl
1A15: 23          inc  hl
1A16: 3A 5E 83    ld   a,($835E)
1A19: 96          sub  (hl)
1A1A: FE 14       cp   $14
1A1C: 30 25       jr   nc,$1A43
1A1E: FE 00       cp   $00
1A20: 38 21       jr   c,$1A43
1A22: 3E BA       ld   a,$BA
1A24: 32 0B D5    ld   ($D50B),a
1A27: 2A CE 84    ld   hl,($84CE)
1A2A: 22 B6 84    ld   ($84B6),hl
1A2D: AF          xor  a
1A2E: 32 9B 84    ld   ($849B),a
1A31: 3C          inc  a
1A32: 32 A6 84    ld   ($84A6),a
1A35: 3E 11       ld   a,$11
1A37: D7          rst  $10
1A38: 3E 11       ld   a,$11
1A3A: CF          rst  $08
1A3B: 3E 0D       ld   a,$0D
1A3D: D7          rst  $10
1A3E: 3E 08       ld   a,$08
1A40: 32 98 84    ld   ($8498),a
1A43: C3 CF 18    jp   $18CF
1A46: 11 04 00    ld   de,$0004
1A49: 21 A5 83    ld   hl,$83A5
1A4C: AF          xor  a
1A4D: 06 06       ld   b,$06
1A4F: 77          ld   (hl),a
1A50: 19          add  hl,de
1A51: 10 FC       djnz $1A4F
1A53: C9          ret
1A54: 57          ld   d,a
1A55: 59          ld   e,c
1A56: 06 06       ld   b,$06
1A58: 7A          ld   a,d
1A59: 4B          ld   c,e
1A5A: CB 46       bit  0,(hl)
1A5C: 20 22       jr   nz,$1A80
1A5E: 23          inc  hl
1A5F: 96          sub  (hl)
1A60: FE 10       cp   $10
1A62: 30 1D       jr   nc,$1A81
1A64: FE 00       cp   $00
1A66: 38 19       jr   c,$1A81
1A68: 23          inc  hl
1A69: 23          inc  hl
1A6A: 79          ld   a,c
1A6B: 96          sub  (hl)
1A6C: FE EF       cp   $EF
1A6E: 38 13       jr   c,$1A83
1A70: 3E 8E       ld   a,$8E
1A72: 32 0B D5    ld   ($D50B),a
1A75: 3E 16       ld   a,$16
1A77: D7          rst  $10
1A78: 3E 16       ld   a,$16
1A7A: CF          rst  $08
1A7B: 18 0B       jr   $1A88
1A7D: 2B          dec  hl
1A7E: 2B          dec  hl
1A7F: 2B          dec  hl
1A80: 23          inc  hl
1A81: 23          inc  hl
1A82: 23          inc  hl
1A83: 23          inc  hl
1A84: 10 D2       djnz $1A58
1A86: 06 10       ld   b,$10
1A88: 05          dec  b
1A89: 78          ld   a,b
1A8A: B7          or   a
1A8B: 20 02       jr   nz,$1A8F
1A8D: 06 01       ld   b,$01
1A8F: C9          ret
1A90: 3E 01       ld   a,$01
1A92: F7          rst  $30
1A93: 3A 62 83    ld   a,($8362)
1A96: FE 0C       cp   $0C
1A98: 30 23       jr   nc,$1ABD
1A9A: 32 5E 83    ld   ($835E),a
1A9D: 3A 60 83    ld   a,($8360)
1AA0: C6 10       add  a,$10
1AA2: 32 5C 83    ld   ($835C),a
1AA5: 3E 38       ld   a,$38
1AA7: 32 BE 83    ld   ($83BE),a
1AAA: 3D          dec  a
1AAB: 32 C2 83    ld   ($83C2),a
1AAE: 3E 04       ld   a,$04
1AB0: D7          rst  $10
1AB1: 3E 09       ld   a,$09
1AB3: D7          rst  $10
1AB4: 3E 11       ld   a,$11
1AB6: D7          rst  $10
1AB7: 3E 14       ld   a,$14
1AB9: CF          rst  $08
1ABA: C3 30 30    jp   $3030
1ABD: 18 D1       jr   $1A90
1ABF: 3E 01       ld   a,$01
1AC1: F7          rst  $30
1AC2: 3A 62 83    ld   a,($8362)
1AC5: FE 10       cp   $10
1AC7: 30 55       jr   nc,$1B1E
1AC9: 3A A6 84    ld   a,($84A6)
1ACC: B7          or   a
1ACD: 20 09       jr   nz,$1AD8
1ACF: 06 32       ld   b,$32
1AD1: 3A 74 81    ld   a,($8174)
1AD4: 80          add  a,b
1AD5: 32 74 81    ld   ($8174),a
1AD8: 3E 80       ld   a,$80
1ADA: 32 3B 84    ld   ($843B),a
1ADD: 3E 8F       ld   a,$8F
1ADF: 32 0B D5    ld   ($D50B),a
1AE2: 3E FF       ld   a,$FF
1AE4: 32 5A 83    ld   ($835A),a
1AE7: 3E 00       ld   a,$00
1AE9: 32 34 84    ld   ($8434),a
1AEC: 3E 00       ld   a,$00
1AEE: EF          rst  $28
1AEF: D9          exx
1AF0: 79          ld   a,c
1AF1: D9          exx
1AF2: D7          rst  $10
1AF3: 3A 5C 83    ld   a,($835C)
1AF6: C6 10       add  a,$10
1AF8: 32 6C 83    ld   ($836C),a
1AFB: D6 20       sub  $20
1AFD: 32 70 83    ld   ($8370),a
1B00: 3E 10       ld   a,$10
1B02: 32 6E 83    ld   ($836E),a
1B05: 32 72 83    ld   ($8372),a
1B08: AF          xor  a
1B09: 32 CD 83    ld   ($83CD),a
1B0C: 3C          inc  a
1B0D: 32 D1 83    ld   ($83D1),a
1B10: 3E 00       ld   a,$00
1B12: 32 CE 83    ld   ($83CE),a
1B15: 32 D2 83    ld   ($83D2),a
1B18: 3E 1E       ld   a,$1E
1B1A: F7          rst  $30
1B1B: 3E 0F       ld   a,$0F
1B1D: D7          rst  $10
1B1E: 18 9F       jr   $1ABF
1B20: 3E 01       ld   a,$01
1B22: F7          rst  $30
1B23: 3A 98 84    ld   a,($8498)
1B26: E6 03       and  $03
1B28: 28 1D       jr   z,$1B47
1B2A: 3A D8 81    ld   a,($81D8)
1B2D: CB 67       bit  4,a
1B2F: 20 16       jr   nz,$1B47
1B31: 3A A8 84    ld   a,($84A8)
1B34: CB 67       bit  4,a
1B36: 28 0F       jr   z,$1B47
1B38: AF          xor  a
1B39: 32 9B 84    ld   ($849B),a
1B3C: 3E 8D       ld   a,$8D
1B3E: 32 0B D5    ld   ($D50B),a
1B41: CD 4F 1B    call $1B4F
1B44: 3E 11       ld   a,$11
1B46: CF          rst  $08
1B47: 3A D8 81    ld   a,($81D8)
1B4A: 32 A8 84    ld   ($84A8),a
1B4D: 18 D1       jr   $1B20
1B4F: 3A D8 81    ld   a,($81D8)
1B52: CB 47       bit  0,a
1B54: 20 05       jr   nz,$1B5B
1B56: 2A CA 84    ld   hl,($84CA)
1B59: 18 03       jr   $1B5E
1B5B: 2A CC 84    ld   hl,($84CC)
1B5E: 22 B6 84    ld   ($84B6),hl
1B61: AF          xor  a
1B62: 32 98 84    ld   ($8498),a
1B65: 3A 99 84    ld   a,($8499)
1B68: CB 47       bit  0,a
1B6A: 28 05       jr   z,$1B71
1B6C: 2A B8 84    ld   hl,($84B8)
1B6F: 18 0C       jr   $1B7D
1B71: CB 4F       bit  1,a
1B73: 28 05       jr   z,$1B7A
1B75: 2A BC 84    ld   hl,($84BC)
1B78: 18 03       jr   $1B7D
1B7A: 2A C0 84    ld   hl,($84C0)
1B7D: 23          inc  hl
1B7E: 23          inc  hl
1B7F: 23          inc  hl
1B80: 23          inc  hl
1B81: CB 7E       bit  7,(hl)
1B83: 20 06       jr   nz,$1B8B
1B85: 2A D2 84    ld   hl,($84D2)
1B88: 22 B6 84    ld   ($84B6),hl
1B8B: C9          ret
1B8C: 3E 01       ld   a,$01
1B8E: F7          rst  $30
1B8F: 2A B6 84    ld   hl,($84B6)
1B92: 7C          ld   a,h
1B93: B7          or   a
1B94: 28 F6       jr   z,$1B8C
1B96: 3E 0F       ld   a,$0F
1B98: 32 AA 84    ld   ($84AA),a
1B9B: 32 AB 84    ld   ($84AB),a
1B9E: 32 AC 84    ld   ($84AC),a
1BA1: 46          ld   b,(hl)
1BA2: 23          inc  hl
1BA3: 4E          ld   c,(hl)
1BA4: 23          inc  hl
1BA5: 56          ld   d,(hl)
1BA6: 23          inc  hl
1BA7: 5E          ld   e,(hl)
1BA8: 23          inc  hl
1BA9: 3A 9B 84    ld   a,($849B)
1BAC: B7          or   a
1BAD: 20 04       jr   nz,$1BB3
1BAF: 7A          ld   a,d
1BB0: 32 9B 84    ld   ($849B),a
1BB3: 3A 98 84    ld   a,($8498)
1BB6: E6 90       and  $90
1BB8: 32 98 84    ld   ($8498),a
1BBB: CB 7F       bit  7,a
1BBD: 20 15       jr   nz,$1BD4
1BBF: 3A 5C 83    ld   a,($835C)
1BC2: 80          add  a,b
1BC3: 32 5C 83    ld   ($835C),a
1BC6: 47          ld   b,a
1BC7: 3A A9 84    ld   a,($84A9)
1BCA: CB 47       bit  0,a
1BCC: 78          ld   a,b
1BCD: 28 02       jr   z,$1BD1
1BCF: C6 10       add  a,$10
1BD1: 32 60 83    ld   ($8360),a
1BD4: 3A 5E 83    ld   a,($835E)
1BD7: 81          add  a,c
1BD8: FE C0       cp   $C0
1BDA: 30 13       jr   nc,$1BEF
1BDC: 32 5E 83    ld   ($835E),a
1BDF: 4F          ld   c,a
1BE0: 3A A9 84    ld   a,($84A9)
1BE3: CB 47       bit  0,a
1BE5: 79          ld   a,c
1BE6: 20 02       jr   nz,$1BEA
1BE8: D6 14       sub  $14
1BEA: C6 04       add  a,$04
1BEC: 32 62 83    ld   ($8362),a
1BEF: 7B          ld   a,e
1BF0: B7          or   a
1BF1: 28 21       jr   z,$1C14
1BF3: E6 C0       and  $C0
1BF5: 07          rlca
1BF6: 07          rlca
1BF7: 32 BD 83    ld   ($83BD),a
1BFA: 32 C1 83    ld   ($83C1),a
1BFD: 7B          ld   a,e
1BFE: E6 3F       and  $3F
1C00: 32 BE 83    ld   ($83BE),a
1C03: 3C          inc  a
1C04: 32 C2 83    ld   ($83C2),a
1C07: 3A 9B 84    ld   a,($849B)
1C0A: 3D          dec  a
1C0B: 32 9B 84    ld   ($849B),a
1C0E: B7          or   a
1C0F: 20 03       jr   nz,$1C14
1C11: 22 B6 84    ld   ($84B6),hl
1C14: C3 8C 1B    jp   $1B8C
1C17: 3E 01       ld   a,$01
1C19: F7          rst  $30
1C1A: 3A C9 84    ld   a,($84C9)
1C1D: 47          ld   b,a
1C1E: 3A 58 83    ld   a,($8358)
1C21: B8          cp   b
1C22: 38 0E       jr   c,$1C32
1C24: 3E 01       ld   a,$01
1C26: 32 9D 84    ld   ($849D),a
1C29: 3E 0E       ld   a,$0E
1C2B: D7          rst  $10
1C2C: 3E 13       ld   a,$13
1C2E: CF          rst  $08
1C2F: 3E 12       ld   a,$12
1C31: D7          rst  $10
1C32: AF          xor  a
1C33: 32 9D 84    ld   ($849D),a
1C36: 18 DF       jr   $1C17
1C38: 3E 01       ld   a,$01
1C3A: F7          rst  $30
1C3B: 3E 0E       ld   a,$0E
1C3D: CF          rst  $08
1C3E: 3E 01       ld   a,$01
1C40: F7          rst  $30
1C41: 21 83 83    ld   hl,$8383
1C44: 7E          ld   a,(hl)
1C45: B7          or   a
1C46: 28 0B       jr   z,$1C53
1C48: 3A 9E 84    ld   a,($849E)
1C4B: B7          or   a
1C4C: 20 03       jr   nz,$1C51
1C4E: CD 71 1C    call $1C71
1C51: 3E 01       ld   a,$01
1C53: 32 9E 84    ld   ($849E),a
1C56: CD 19 1D    call $1D19
1C59: 21 83 83    ld   hl,$8383
1C5C: 7E          ld   a,(hl)
1C5D: B7          or   a
1C5E: 20 0C       jr   nz,$1C6C
1C60: 3A 9F 84    ld   a,($849F)
1C63: B7          or   a
1C64: 28 06       jr   z,$1C6C
1C66: 3E B7       ld   a,$B7
1C68: 32 0B D5    ld   ($D50B),a
1C6B: AF          xor  a
1C6C: 32 9F 84    ld   ($849F),a
1C6F: 18 CD       jr   $1C3E
1C71: 01 04 00    ld   bc,$0004
1C74: 21 73 83    ld   hl,$8373
1C77: 3A A5 84    ld   a,($84A5)
1C7A: CB 7F       bit  7,a
1C7C: 28 18       jr   z,$1C96
1C7E: FE 80       cp   $80
1C80: 28 30       jr   z,$1CB2
1C82: FE 81       cp   $81
1C84: 28 2B       jr   z,$1CB1
1C86: FE 82       cp   $82
1C88: 28 26       jr   z,$1CB0
1C8A: FE 83       cp   $83
1C8C: 28 21       jr   z,$1CAF
1C8E: FE 84       cp   $84
1C90: 28 1C       jr   z,$1CAE
1C92: FE 85       cp   $85
1C94: 28 19       jr   z,$1CAF
1C96: FE 00       cp   $00
1C98: 28 14       jr   z,$1CAE
1C9A: FE 01       cp   $01
1C9C: 28 11       jr   z,$1CAF
1C9E: FE 02       cp   $02
1CA0: 28 0E       jr   z,$1CB0
1CA2: FE 03       cp   $03
1CA4: 28 0B       jr   z,$1CB1
1CA6: FE 04       cp   $04
1CA8: 28 08       jr   z,$1CB2
1CAA: FE 05       cp   $05
1CAC: 28 03       jr   z,$1CB1
1CAE: 09          add  hl,bc
1CAF: 09          add  hl,bc
1CB0: 09          add  hl,bc
1CB1: 09          add  hl,bc
1CB2: 09          add  hl,bc
1CB3: 22 C4 84    ld   ($84C4),hl
1CB6: 3C          inc  a
1CB7: FE 06       cp   $06
1CB9: 20 04       jr   nz,$1CBF
1CBB: 3E 80       ld   a,$80
1CBD: 18 05       jr   $1CC4
1CBF: FE 86       cp   $86
1CC1: 20 01       jr   nz,$1CC4
1CC3: AF          xor  a
1CC4: 32 A5 84    ld   ($84A5),a
1CC7: 11 63 83    ld   de,$8363
1CCA: 7E          ld   a,(hl)
1CCB: 12          ld   (de),a
1CCC: 23          inc  hl
1CCD: 13          inc  de
1CCE: 7E          ld   a,(hl)
1CCF: 46          ld   b,(hl)
1CD0: 12          ld   (de),a
1CD1: 13          inc  de
1CD2: 23          inc  hl
1CD3: AF          xor  a
1CD4: 12          ld   (de),a
1CD5: 13          inc  de
1CD6: 23          inc  hl
1CD7: 7E          ld   a,(hl)
1CD8: D6 08       sub  $08
1CDA: 4E          ld   c,(hl)
1CDB: 12          ld   (de),a
1CDC: 13          inc  de
1CDD: 3E 01       ld   a,$01
1CDF: 12          ld   (de),a
1CE0: 13          inc  de
1CE1: 78          ld   a,b
1CE2: 12          ld   (de),a
1CE3: 13          inc  de
1CE4: AF          xor  a
1CE5: 12          ld   (de),a
1CE6: 13          inc  de
1CE7: 79          ld   a,c
1CE8: D6 10       sub  $10
1CEA: 12          ld   (de),a
1CEB: 3A A0 84    ld   a,($84A0)
1CEE: CB 47       bit  0,a
1CF0: 28 09       jr   z,$1CFB
1CF2: CB 87       res  0,a
1CF4: 32 A0 84    ld   ($84A0),a
1CF7: 3E 01       ld   a,$01
1CF9: 18 06       jr   $1D01
1CFB: CB C7       set  0,a
1CFD: 32 A0 84    ld   ($84A0),a
1D00: AF          xor  a
1D01: 32 C5 83    ld   ($83C5),a
1D04: 32 C9 83    ld   ($83C9),a
1D07: 3E 1A       ld   a,$1A
1D09: 32 C6 83    ld   ($83C6),a
1D0C: 3C          inc  a
1D0D: 32 CA 83    ld   ($83CA),a
1D10: 3A A0 84    ld   a,($84A0)
1D13: CB D7       set  2,a
1D15: 32 A0 84    ld   ($84A0),a
1D18: C9          ret
1D19: 3A A0 84    ld   a,($84A0)
1D1C: CB 57       bit  2,a
1D1E: 28 2A       jr   z,$1D4A
1D20: 2A C4 84    ld   hl,($84C4)
1D23: 11 63 83    ld   de,$8363
1D26: 7E          ld   a,(hl)
1D27: 12          ld   (de),a
1D28: 13          inc  de
1D29: 23          inc  hl
1D2A: 7E          ld   a,(hl)
1D2B: 46          ld   b,(hl)
1D2C: 12          ld   (de),a
1D2D: 13          inc  de
1D2E: 23          inc  hl
1D2F: 13          inc  de
1D30: 23          inc  hl
1D31: 7E          ld   a,(hl)
1D32: D6 08       sub  $08
1D34: 4F          ld   c,a
1D35: 12          ld   (de),a
1D36: 13          inc  de
1D37: 13          inc  de
1D38: 78          ld   a,b
1D39: 12          ld   (de),a
1D3A: 13          inc  de
1D3B: 13          inc  de
1D3C: 79          ld   a,c
1D3D: D6 10       sub  $10
1D3F: 12          ld   (de),a
1D40: 3A 63 83    ld   a,($8363)
1D43: 32 67 83    ld   ($8367),a
1D46: AF          xor  a
1D47: 32 69 83    ld   ($8369),a
1D4A: C9          ret
1D4B: 3E 01       ld   a,$01
1D4D: F7          rst  $30
1D4E: 3E 80       ld   a,$80
1D50: 32 3B 84    ld   ($843B),a
1D53: 3E 30       ld   a,$30
1D55: F7          rst  $30
1D56: 3A 56 81    ld   a,($8156)
1D59: B7          or   a
1D5A: 28 0E       jr   z,$1D6A
1D5C: 2A 56 83    ld   hl,($8356)
1D5F: 22 D9 81    ld   ($81D9),hl
1D62: 2A 58 83    ld   hl,($8358)
1D65: 22 DB 81    ld   ($81DB),hl
1D68: 18 0C       jr   $1D76
1D6A: 2A 56 83    ld   hl,($8356)
1D6D: 22 DD 81    ld   ($81DD),hl
1D70: 2A 58 83    ld   hl,($8358)
1D73: 22 DF 81    ld   ($81DF),hl
1D76: 3E FF       ld   a,$FF
1D78: 32 5A 83    ld   ($835A),a
1D7B: 3E FF       ld   a,$FF
1D7D: 32 34 84    ld   ($8434),a
1D80: 3E 00       ld   a,$00
1D82: EF          rst  $28
1D83: D9          exx
1D84: 79          ld   a,c
1D85: D9          exx
1D86: D7          rst  $10
1D87: 3E 01       ld   a,$01
1D89: F7          rst  $30
1D8A: AF          xor  a
1D8B: 32 A9 84    ld   ($84A9),a
1D8E: 3A 5C 83    ld   a,($835C)
1D91: FE F0       cp   $F0
1D93: 30 F2       jr   nc,$1D87
1D95: 47          ld   b,a
1D96: 3A FB 82    ld   a,($82FB)
1D99: C6 04       add  a,$04
1D9B: 80          add  a,b
1D9C: E6 F8       and  $F8
1D9E: 0F          rrca
1D9F: 0F          rrca
1DA0: 0F          rrca
1DA1: 21 19 82    ld   hl,$8219
1DA4: 85          add  a,l
1DA5: 30 01       jr   nc,$1DA8
1DA7: 24          inc  h
1DA8: 6F          ld   l,a
1DA9: 7E          ld   a,(hl)
1DAA: E6 02       and  $02
1DAC: 28 D9       jr   z,$1D87
1DAE: 3E 10       ld   a,$10
1DB0: D7          rst  $10
1DB1: 3E 0E       ld   a,$0E
1DB3: D7          rst  $10
1DB4: 3A A6 84    ld   a,($84A6)
1DB7: B7          or   a
1DB8: 20 24       jr   nz,$1DDE
1DBA: 2A D0 84    ld   hl,($84D0)
1DBD: 22 B6 84    ld   ($84B6),hl
1DC0: 3A 98 84    ld   a,($8498)
1DC3: CB BF       res  7,a
1DC5: 32 98 84    ld   ($8498),a
1DC8: AF          xor  a
1DC9: 32 99 84    ld   ($8499),a
1DCC: 32 9B 84    ld   ($849B),a
1DCF: 3C          inc  a
1DD0: 32 A9 84    ld   ($84A9),a
1DD3: 3A 60 83    ld   a,($8360)
1DD6: D6 10       sub  $10
1DD8: 32 5C 83    ld   ($835C),a
1DDB: 3E 11       ld   a,$11
1DDD: CF          rst  $08
1DDE: 3E 0F       ld   a,$0F
1DE0: CF          rst  $08
1DE1: 3E 80       ld   a,$80
1DE3: 32 3B 84    ld   ($843B),a
1DE6: 3E A3       ld   a,$A3
1DE8: 32 0B D5    ld   ($D50B),a
1DEB: 3E 15       ld   a,$15
1DED: D7          rst  $10

1F00: 3E 01       ld   a,$01
1F02: F7          rst  $30
1F03: AF          xor  a
1F04: 32 AD 84    ld   ($84AD),a
1F07: 3E 00       ld   a,$00
1F09: F7          rst  $30
1F0A: 3A AD 84    ld   a,($84AD)
1F0D: 3C          inc  a
1F0E: 32 AD 84    ld   ($84AD),a
1F11: FE 08       cp   $08
1F13: 20 F2       jr   nz,$1F07
1F15: 3A 98 84    ld   a,($8498)
1F18: E6 FD       and  $FD
1F1A: 32 98 84    ld   ($8498),a
1F1D: 21 40 4B    ld   hl,$4B40
1F20: 22 B6 84    ld   ($84B6),hl
1F23: 3E 10       ld   a,$10
1F25: D7          rst  $10
1F26: 3E 11       ld   a,$11
1F28: CF          rst  $08
1F29: 3E 16       ld   a,$16
1F2B: D7          rst  $10

2000: C3 00 00    jp   $0000
2003: C3 00 00    jp   $0000
2006: C3 00 00    jp   $0000
2009: C3 00 00    jp   $0000
200C: C3 71 25    jp   $2571
200F: C3 F8 25    jp   $25F8
2012: C3 18 25    jp   $2518
2015: C3 42 25    jp   $2542
2018: C3 42 20    jp   $2042
201B: C3 C8 22    jp   $22C8
201E: C3 CD 26    jp   $26CD
2021: C3 4E 27    jp   $274E
2024: C3 87 25    jp   $2587
2027: C3 F9 27    jp   $27F9
202A: C3 00 00    jp   $0000
202D: C3 00 00    jp   $0000
2030: C3 30 22    jp   $2230
2033: C3 7E 22    jp   $227E
2036: C3 DA 21    jp   $21DA
2039: C3 6C 25    jp   $256C
203C: C3 7B 2B    jp   $2B7B
203F: C3 00 00    jp   $0000
2042: 3E 01       ld   a,$01
2044: F7          rst  $30
2045: 08          ex   af,af'
2046: C5          push bc
2047: 06 00       ld   b,$00
2049: CD D8 02    call $02D8
204C: C1          pop  bc
204D: 79          ld   a,c
204E: 3D          dec  a
204F: E6 03       and  $03
2051: 07          rlca
2052: 07          rlca
2053: 07          rlca
2054: 5F          ld   e,a
2055: 16 00       ld   d,$00
2057: 21 A0 5F    ld   hl,$5FA0
205A: 19          add  hl,de
205B: 56          ld   d,(hl)
205C: 23          inc  hl
205D: 5E          ld   e,(hl)
205E: E5          push hl
205F: 21 67 84    ld   hl,$8467
2062: EB          ex   de,hl
2063: 01 10 00    ld   bc,$0010
2066: ED B0       ldir
2068: 21 E1 81    ld   hl,$81E1
206B: 3A 56 81    ld   a,($8156)
206E: A7          and  a
206F: 20 04       jr   nz,$2075
2071: 01 04 00    ld   bc,$0004
2074: 09          add  hl,bc
2075: 08          ex   af,af'
2076: 20 05       jr   nz,$207D
2078: 01 00 00    ld   bc,$0000
207B: 18 11       jr   $208E
207D: 3E 91       ld   a,$91
207F: 32 0B D5    ld   ($D50B),a
2082: 46          ld   b,(hl)
2083: 23          inc  hl
2084: 7E          ld   a,(hl)
2085: D6 20       sub  $20
2087: 4F          ld   c,a
2088: 78          ld   a,b
2089: DE 00       sbc  a,$00
208B: 38 EB       jr   c,$2078
208D: 47          ld   b,a
208E: E1          pop  hl
208F: C5          push bc
2090: 23          inc  hl
2091: 56          ld   d,(hl)
2092: 23          inc  hl
2093: 5E          ld   e,(hl)
2094: 23          inc  hl
2095: 7E          ld   a,(hl)
2096: 32 65 84    ld   ($8465),a
2099: 23          inc  hl
209A: 7E          ld   a,(hl)
209B: 32 66 84    ld   ($8466),a
209E: D5          push de
209F: 21 00 5C    ld   hl,$5C00
20A2: 11 80 5C    ld   de,$5C80
20A5: AF          xor  a
20A6: 32 5A 83    ld   ($835A),a
20A9: CD DB 02    call $02DB
20AC: D1          pop  de
20AD: C1          pop  bc
20AE: 21 56 83    ld   hl,$8356
20B1: 70          ld   (hl),b
20B2: 23          inc  hl
20B3: 23          inc  hl
20B4: 71          ld   (hl),c
20B5: EB          ex   de,hl
20B6: CB 21       sla  c
20B8: CB 10       rl   b
20BA: CB 21       sla  c
20BC: CB 10       rl   b
20BE: CB 21       sla  c
20C0: CB 10       rl   b
20C2: AF          xor  a
20C3: 32 7A 84    ld   ($847A),a
20C6: 11 03 00    ld   de,$0003
20C9: 79          ld   a,c
20CA: 96          sub  (hl)
20CB: 4F          ld   c,a
20CC: 78          ld   a,b
20CD: 9A          sbc  a,d
20CE: 47          ld   b,a
20CF: 38 0C       jr   c,$20DD
20D1: 23          inc  hl
20D2: 7E          ld   a,(hl)
20D3: FE FF       cp   $FF
20D5: 20 03       jr   nz,$20DA
20D7: 32 7A 84    ld   ($847A),a
20DA: 19          add  hl,de
20DB: 18 EC       jr   $20C9
20DD: 79          ld   a,c
20DE: 86          add  a,(hl)
20DF: 32 7D 84    ld   ($847D),a
20E2: EB          ex   de,hl
20E3: 21 7F 84    ld   hl,$847F
20E6: 72          ld   (hl),d
20E7: 23          inc  hl
20E8: 73          ld   (hl),e
20E9: 21 7B 84    ld   hl,$847B
20EC: AF          xor  a
20ED: 77          ld   (hl),a
20EE: 23          inc  hl
20EF: 77          ld   (hl),a
20F0: 21 37 84    ld   hl,$8437
20F3: 11 00 52    ld   de,$5200
20F6: 72          ld   (hl),d
20F7: 23          inc  hl
20F8: 73          ld   (hl),e
20F9: 11 58 84    ld   de,$8458
20FC: 21 90 5E    ld   hl,$5E90
20FF: 01 06 00    ld   bc,$0006
2102: ED B0       ldir
2104: 62          ld   h,d
2105: 6B          ld   l,e
2106: 36 98       ld   (hl),$98
2108: 13          inc  de
2109: 01 05 00    ld   bc,$0005
210C: ED B0       ldir
210E: 3E 01       ld   a,$01
2110: F7          rst  $30
2111: 3E 08       ld   a,$08
2113: 32 00 D3    ld   ($D300),a
2116: 06 70       ld   b,$70
2118: CD D8 02    call $02D8
211B: DD 21 67 84 ld   ix,$8467
211F: DD 7E 06    ld   a,(ix+$06)
2122: 32 45 83    ld   ($8345),a
2125: AF          xor  a
2126: 21 77 84    ld   hl,$8477
2129: 77          ld   (hl),a
212A: 23          inc  hl
212B: 77          ld   (hl),a
212C: 23          inc  hl
212D: 77          ld   (hl),a
212E: AF          xor  a
212F: 21 50 84    ld   hl,$8450
2132: 36 FF       ld   (hl),$FF
2134: 23          inc  hl
2135: 77          ld   (hl),a
2136: 23          inc  hl
2137: 36 2D       ld   (hl),$2D
2139: 23          inc  hl
213A: 36 2C       ld   (hl),$2C
213C: 23          inc  hl
213D: 3E 10       ld   a,$10
213F: 77          ld   (hl),a
2140: 23          inc  hl
2141: AF          xor  a
2142: 77          ld   (hl),a
2143: 23          inc  hl
2144: 77          ld   (hl),a
2145: 23          inc  hl
2146: 77          ld   (hl),a
2147: AF          xor  a
2148: 21 B1 84    ld   hl,$84B1
214B: 06 90       ld   b,$90
214D: 77          ld   (hl),a
214E: 23          inc  hl
214F: 10 FC       djnz $214D
2151: 21 81 84    ld   hl,$8481
2154: 06 20       ld   b,$20
2156: 77          ld   (hl),a
2157: 23          inc  hl
2158: 10 FC       djnz $2156
215A: 0E 00       ld   c,$00
215C: 21 5B 83    ld   hl,$835B
215F: 71          ld   (hl),c
2160: 23          inc  hl
2161: DD 7E 00    ld   a,(ix+$00)
2164: 77          ld   (hl),a
2165: 23          inc  hl
2166: 71          ld   (hl),c
2167: 23          inc  hl
2168: DD 5E 0C    ld   e,(ix+$0c)
216B: 73          ld   (hl),e
216C: 23          inc  hl
216D: 71          ld   (hl),c
216E: 23          inc  hl
216F: C6 10       add  a,$10
2171: 77          ld   (hl),a
2172: 23          inc  hl
2173: 71          ld   (hl),c
2174: 23          inc  hl
2175: 73          ld   (hl),e
2176: 23          inc  hl
2177: 71          ld   (hl),c
2178: 23          inc  hl
2179: C6 10       add  a,$10
217B: 77          ld   (hl),a
217C: 23          inc  hl
217D: 71          ld   (hl),c
217E: 23          inc  hl
217F: 73          ld   (hl),e
2180: 23          inc  hl
2181: 16 E0       ld   d,$E0
2183: 3E 01       ld   a,$01
2185: 06 2A       ld   b,$2A
2187: 77          ld   (hl),a
2188: 23          inc  hl
2189: 72          ld   (hl),d
218A: 23          inc  hl
218B: 10 FA       djnz $2187
218D: 0E 00       ld   c,$00
218F: 23          inc  hl
2190: 23          inc  hl
2191: 71          ld   (hl),c
2192: 23          inc  hl
2193: 3A 70 5E    ld   a,($5E70)
2196: 77          ld   (hl),a
2197: 23          inc  hl
2198: 23          inc  hl
2199: 23          inc  hl
219A: 71          ld   (hl),c
219B: 23          inc  hl
219C: 3A 71 5E    ld   a,($5E71)
219F: 77          ld   (hl),a
21A0: 23          inc  hl
21A1: 23          inc  hl
21A2: 23          inc  hl
21A3: 71          ld   (hl),c
21A4: 23          inc  hl
21A5: 3A 7C 5E    ld   a,($5E7C)
21A8: 77          ld   (hl),a
21A9: 23          inc  hl
21AA: 06 15       ld   b,$15
21AC: AF          xor  a
21AD: 0E 3F       ld   c,$3F
21AF: 23          inc  hl
21B0: 23          inc  hl
21B1: 77          ld   (hl),a
21B2: 23          inc  hl
21B3: 71          ld   (hl),c
21B4: 23          inc  hl
21B5: 10 F8       djnz $21AF
21B7: 3E 05       ld   a,$05
21B9: CF          rst  $08
21BA: 3E 05       ld   a,$05
21BC: D7          rst  $10
21BD: 06 F0       ld   b,$F0
21BF: CD D8 02    call $02D8
21C2: 3E 01       ld   a,$01
21C4: F7          rst  $30
21C5: 3E 2C       ld   a,$2C
21C7: CF          rst  $08
21C8: 3E 21       ld   a,$21
21CA: CF          rst  $08
21CB: 3E 25       ld   a,$25
21CD: CF          rst  $08
21CE: 3E 04       ld   a,$04
21D0: CF          rst  $08
21D1: 3E 05       ld   a,$05
21D3: CF          rst  $08
21D4: 3E 2E       ld   a,$2E
21D6: CF          rst  $08
21D7: 3E 20       ld   a,$20
21D9: D7          rst  $10
21DA: 3E 01       ld   a,$01
21DC: F7          rst  $30
21DD: 21 64 84    ld   hl,$8464
21E0: DD 21 67 84 ld   ix,$8467
21E4: 11 45 83    ld   de,$8345
21E7: 36 00       ld   (hl),$00
21E9: 7E          ld   a,(hl)
21EA: 3C          inc  a
21EB: DD BE 0B    cp   (ix+$0b)
21EE: 38 09       jr   c,$21F9
21F0: 1A          ld   a,(de)
21F1: DD BE 06    cp   (ix+$06)
21F4: 28 02       jr   z,$21F8
21F6: 3D          dec  a
21F7: 12          ld   (de),a
21F8: AF          xor  a
21F9: 77          ld   (hl),a
21FA: 06 00       ld   b,$00
21FC: 3A 5C 83    ld   a,($835C)
21FF: 4F          ld   c,a
2200: DD BE 00    cp   (ix+$00)
2203: 28 1E       jr   z,$2223
2205: 38 07       jr   c,$220E
2207: DD 7E 05    ld   a,(ix+$05)
220A: ED 44       neg
220C: 18 03       jr   $2211
220E: DD 7E 05    ld   a,(ix+$05)
2211: 47          ld   b,a
2212: CD DE 02    call $02DE
2215: 81          add  a,c
2216: 32 5C 83    ld   ($835C),a
2219: C6 10       add  a,$10
221B: 32 60 83    ld   ($8360),a
221E: C6 10       add  a,$10
2220: 32 64 83    ld   ($8364),a
2223: 1A          ld   a,(de)
2224: 47          ld   b,a
2225: 3E 18       ld   a,$18
2227: 90          sub  b
2228: 32 54 84    ld   ($8454),a
222B: 3E 01       ld   a,$01
222D: F7          rst  $30
222E: 18 B9       jr   $21E9
2230: 3E 01       ld   a,$01
2232: F7          rst  $30
2233: 21 64 84    ld   hl,$8464
2236: DD 21 67 84 ld   ix,$8467
223A: 11 45 83    ld   de,$8345
223D: 36 00       ld   (hl),$00
223F: 7E          ld   a,(hl)
2240: 3C          inc  a
2241: DD BE 09    cp   (ix+$09)
2244: 38 09       jr   c,$224F
2246: 1A          ld   a,(de)
2247: DD BE 07    cp   (ix+$07)
224A: 28 02       jr   z,$224E
224C: 3C          inc  a
224D: 12          ld   (de),a
224E: AF          xor  a
224F: 77          ld   (hl),a
2250: 06 00       ld   b,$00
2252: 3A 5C 83    ld   a,($835C)
2255: 4F          ld   c,a
2256: DD BE 01    cp   (ix+$01)
2259: 28 16       jr   z,$2271
225B: 38 14       jr   c,$2271
225D: DD 7E 03    ld   a,(ix+$03)
2260: CD DE 02    call $02DE
2263: 81          add  a,c
2264: 32 5C 83    ld   ($835C),a
2267: C6 10       add  a,$10
2269: 32 60 83    ld   ($8360),a
226C: C6 10       add  a,$10
226E: 32 64 83    ld   ($8364),a
2271: 1A          ld   a,(de)
2272: 47          ld   b,a
2273: 3E 10       ld   a,$10
2275: 90          sub  b
2276: 32 54 84    ld   ($8454),a
2279: 3E 01       ld   a,$01
227B: F7          rst  $30
227C: 18 C1       jr   $223F
227E: 3E 01       ld   a,$01
2280: F7          rst  $30
2281: 21 64 84    ld   hl,$8464
2284: 11 45 83    ld   de,$8345
2287: DD 21 67 84 ld   ix,$8467
228B: 36 00       ld   (hl),$00
228D: 7E          ld   a,(hl)
228E: 3C          inc  a
228F: DD BE 0A    cp   (ix+$0a)
2292: 38 09       jr   c,$229D
2294: 1A          ld   a,(de)
2295: DD BE 06    cp   (ix+$06)
2298: 28 02       jr   z,$229C
229A: 3D          dec  a
229B: 12          ld   (de),a
229C: AF          xor  a
229D: 77          ld   (hl),a
229E: 3A 5C 83    ld   a,($835C)
22A1: 4F          ld   c,a
22A2: DD BE 00    cp   (ix+$00)
22A5: 28 14       jr   z,$22BB
22A7: DD 7E 04    ld   a,(ix+$04)
22AA: CD DE 02    call $02DE
22AD: 81          add  a,c
22AE: 32 5C 83    ld   ($835C),a
22B1: C6 10       add  a,$10
22B3: 32 60 83    ld   ($8360),a
22B6: C6 10       add  a,$10
22B8: 32 64 83    ld   ($8364),a
22BB: 1A          ld   a,(de)
22BC: 47          ld   b,a
22BD: 3E 20       ld   a,$20
22BF: 90          sub  b
22C0: 32 54 84    ld   ($8454),a
22C3: 3E 01       ld   a,$01
22C5: F7          rst  $30
22C6: 18 C5       jr   $228D
22C8: 3E 01       ld   a,$01
22CA: F7          rst  $30
22CB: DD 21 67 84 ld   ix,$8467
22CF: 21 50 84    ld   hl,$8450
22D2: 46          ld   b,(hl)
22D3: 3A D8 81    ld   a,($81D8)
22D6: 77          ld   (hl),a
22D7: 4F          ld   c,a
22D8: CB 60       bit  4,b
22DA: 28 12       jr   z,$22EE
22DC: CB 61       bit  4,c
22DE: 20 0E       jr   nz,$22EE
22E0: 3A 5C 83    ld   a,($835C)
22E3: DD BE 01    cp   (ix+$01)
22E6: 38 06       jr   c,$22EE
22E8: 3E 24       ld   a,$24
22EA: CF          rst  $08
22EB: C3 BF 23    jp   $23BF
22EE: 23          inc  hl
22EF: 3A 5E 83    ld   a,($835E)
22F2: C6 08       add  a,$08
22F4: DD BE 0C    cp   (ix+$0c)
22F7: 30 0B       jr   nc,$2304
22F9: AF          xor  a
22FA: BE          cp   (hl)
22FB: 20 09       jr   nz,$2306
22FD: 3E 22       ld   a,$22
22FF: CF          rst  $08
2300: 3E FF       ld   a,$FF
2302: 18 01       jr   $2305
2304: AF          xor  a
2305: 77          ld   (hl),a
2306: 23          inc  hl
2307: CB 51       bit  2,c
2309: 20 0E       jr   nz,$2319
230B: 3E 1E       ld   a,$1E
230D: BE          cp   (hl)
230E: 28 27       jr   z,$2337
2310: 46          ld   b,(hl)
2311: 77          ld   (hl),a
2312: 4F          ld   c,a
2313: 78          ld   a,b
2314: D7          rst  $10
2315: 79          ld   a,c
2316: CF          rst  $08
2317: 18 1E       jr   $2337
2319: CB 59       bit  3,c
231B: 20 0E       jr   nz,$232B
231D: 3E 1F       ld   a,$1F
231F: BE          cp   (hl)
2320: 28 15       jr   z,$2337
2322: 46          ld   b,(hl)
2323: 77          ld   (hl),a
2324: 4F          ld   c,a
2325: 78          ld   a,b
2326: D7          rst  $10
2327: 79          ld   a,c
2328: CF          rst  $08
2329: 18 0C       jr   $2337
232B: 3E 2D       ld   a,$2D
232D: BE          cp   (hl)
232E: 28 07       jr   z,$2337
2330: 46          ld   b,(hl)
2331: 77          ld   (hl),a
2332: 4F          ld   c,a
2333: 78          ld   a,b
2334: D7          rst  $10
2335: 79          ld   a,c
2336: CF          rst  $08
2337: 23          inc  hl
2338: 3A 5C 83    ld   a,($835C)
233B: DD BE 01    cp   (ix+$01)
233E: 38 24       jr   c,$2364
2340: CB 49       bit  1,c
2342: 20 0E       jr   nz,$2352
2344: 3E 2B       ld   a,$2B
2346: BE          cp   (hl)
2347: 28 27       jr   z,$2370
2349: 46          ld   b,(hl)
234A: 77          ld   (hl),a
234B: 4F          ld   c,a
234C: 78          ld   a,b
234D: D7          rst  $10
234E: 79          ld   a,c
234F: CF          rst  $08
2350: 18 1E       jr   $2370
2352: CB 41       bit  0,c
2354: 20 0E       jr   nz,$2364
2356: 3E 2A       ld   a,$2A
2358: BE          cp   (hl)
2359: 28 15       jr   z,$2370
235B: 46          ld   b,(hl)
235C: 77          ld   (hl),a
235D: 4F          ld   c,a
235E: 78          ld   a,b
235F: D7          rst  $10
2360: 79          ld   a,c
2361: CF          rst  $08
2362: 18 0C       jr   $2370
2364: 3E 2C       ld   a,$2C
2366: BE          cp   (hl)
2367: 28 07       jr   z,$2370
2369: 46          ld   b,(hl)
236A: 77          ld   (hl),a
236B: 4F          ld   c,a
236C: 78          ld   a,b
236D: D7          rst  $10
236E: 79          ld   a,c
236F: CF          rst  $08
2370: 23          inc  hl
2371: 46          ld   b,(hl)
2372: 23          inc  hl
2373: 7E          ld   a,(hl)
2374: 3C          inc  a
2375: B8          cp   b
2376: 38 1A       jr   c,$2392
2378: AF          xor  a
2379: 77          ld   (hl),a
237A: 23          inc  hl
237B: 7E          ld   a,(hl)
237C: 3C          inc  a
237D: E6 03       and  $03
237F: 20 0D       jr   nz,$238E
2381: 08          ex   af,af'
2382: 3A 51 84    ld   a,($8451)
2385: A7          and  a
2386: 28 05       jr   z,$238D
2388: 3E 92       ld   a,$92
238A: 32 0B D5    ld   ($D50B),a
238D: 08          ex   af,af'
238E: 77          ld   (hl),a
238F: 57          ld   d,a
2390: 18 04       jr   $2396
2392: 77          ld   (hl),a
2393: 23          inc  hl
2394: 7E          ld   a,(hl)
2395: 57          ld   d,a
2396: 07          rlca
2397: 21 70 5E    ld   hl,$5E70
239A: 06 00       ld   b,$00
239C: 4F          ld   c,a
239D: 09          add  hl,bc
239E: 7E          ld   a,(hl)
239F: 32 BE 83    ld   ($83BE),a
23A2: 23          inc  hl
23A3: 7E          ld   a,(hl)
23A4: 32 C2 83    ld   ($83C2),a
23A7: 3A 51 84    ld   a,($8451)
23AA: A7          and  a
23AB: 28 04       jr   z,$23B1
23AD: 3E 3F       ld   a,$3F
23AF: 18 0B       jr   $23BC
23B1: 7A          ld   a,d
23B2: E6 01       and  $01
23B4: 21 7C 5E    ld   hl,$5E7C
23B7: 06 00       ld   b,$00
23B9: 4F          ld   c,a
23BA: 09          add  hl,bc
23BB: 7E          ld   a,(hl)
23BC: 32 C6 83    ld   ($83C6),a
23BF: 3E 01       ld   a,$01
23C1: F7          rst  $30
23C2: 3A 5C 83    ld   a,($835C)
23C5: 47          ld   b,a
23C6: 3A FB 82    ld   a,($82FB)
23C9: C6 04       add  a,$04
23CB: 80          add  a,b
23CC: E6 F8       and  $F8
23CE: 0F          rrca
23CF: 0F          rrca
23D0: 0F          rrca
23D1: 21 59 82    ld   hl,$8259
23D4: 85          add  a,l
23D5: 30 01       jr   nc,$23D8
23D7: 24          inc  h
23D8: 6F          ld   l,a
23D9: 7E          ld   a,(hl)
23DA: A7          and  a
23DB: 20 40       jr   nz,$241D
23DD: 3A 5B 83    ld   a,($835B)
23E0: E6 F0       and  $F0
23E2: CA CB 22    jp   z,$22CB
23E5: CB 7F       bit  7,a
23E7: 28 03       jr   z,$23EC
23E9: 3E 21       ld   a,$21
23EB: D7          rst  $10
23EC: E6 30       and  $30
23EE: C2 BF 23    jp   nz,$23BF
23F1: DD 7E 06    ld   a,(ix+$06)
23F4: 32 45 83    ld   ($8345),a
23F7: 3A D8 81    ld   a,($81D8)
23FA: 21 50 84    ld   hl,$8450
23FD: 46          ld   b,(hl)
23FE: 77          ld   (hl),a
23FF: CB 60       bit  4,b
2401: 28 17       jr   z,$241A
2403: E6 10       and  $10
2405: 20 13       jr   nz,$241A
2407: 3A 5C 83    ld   a,($835C)
240A: DD BE 01    cp   (ix+$01)
240D: 38 0B       jr   c,$241A
240F: 3A 5B 83    ld   a,($835B)
2412: F6 10       or   $10
2414: 32 5B 83    ld   ($835B),a
2417: 3E 1C       ld   a,$1C
2419: CF          rst  $08
241A: C3 BF 23    jp   $23BF
241D: 3E 04       ld   a,$04
241F: D7          rst  $10
2420: 3E 1C       ld   a,$1C
2422: D7          rst  $10
2423: 3E 1D       ld   a,$1D
2425: D7          rst  $10
2426: 3E 24       ld   a,$24
2428: D7          rst  $10
2429: 3E 25       ld   a,$25
242B: D7          rst  $10
242C: 21 52 84    ld   hl,$8452
242F: 7E          ld   a,(hl)
2430: D7          rst  $10
2431: 23          inc  hl
2432: 7E          ld   a,(hl)
2433: D7          rst  $10
2434: 21 70 5E    ld   hl,$5E70
2437: 7E          ld   a,(hl)
2438: 32 BE 83    ld   ($83BE),a
243B: 23          inc  hl
243C: 7E          ld   a,(hl)
243D: 32 C2 83    ld   ($83C2),a
2440: 3E 3F       ld   a,$3F
2442: 32 C6 83    ld   ($83C6),a
2445: 3A 5C 83    ld   a,($835C)
2448: C6 10       add  a,$10
244A: 32 60 83    ld   ($8360),a
244D: 3A 62 83    ld   a,($8362)
2450: 32 5E 83    ld   ($835E),a
2453: 3E 02       ld   a,$02
2455: 32 5B 83    ld   ($835B),a
2458: 3E AA       ld   a,$AA
245A: 32 0B D5    ld   ($D50B),a
245D: 3E 80       ld   a,$80
245F: 32 3B 84    ld   ($843B),a
2462: 3E 1F       ld   a,$1F
2464: CF          rst  $08
2465: 3E 01       ld   a,$01
2467: F7          rst  $30
2468: 3A 5E 83    ld   a,($835E)
246B: DD BE 0C    cp   (ix+$0c)
246E: 38 F5       jr   c,$2465
2470: AF          xor  a
2471: 32 51 84    ld   ($8451),a
2474: 3E 01       ld   a,$01
2476: F7          rst  $30
2477: 3E 1F       ld   a,$1F
2479: D7          rst  $10
247A: 3E 22       ld   a,$22
247C: D7          rst  $10
247D: 3E 04       ld   a,$04
247F: F7          rst  $30
2480: 3E 94       ld   a,$94
2482: 32 0B D5    ld   ($D50B),a
2485: DD 21 C2 84 ld   ix,$84C2
2489: FD 21 5B 83 ld   iy,$835B
248D: 21 C0 5F    ld   hl,$5FC0
2490: DD 74 00    ld   (ix+$00),h
2493: DD 75 12    ld   (ix+$12),l
2496: 23          inc  hl
2497: 23          inc  hl
2498: 7E          ld   a,(hl)
2499: DD 77 24    ld   (ix+$24),a
249C: CD D8 2A    call $2AD8
249F: FE 02       cp   $02
24A1: 20 2A       jr   nz,$24CD
24A3: 01 10 00    ld   bc,$0010
24A6: 09          add  hl,bc
24A7: FD 72 04    ld   (iy+$04),d
24AA: FD 73 05    ld   (iy+$05),e
24AD: FD 74 06    ld   (iy+$06),h
24B0: FD 75 07    ld   (iy+$07),l
24B3: 08          ex   af,af'
24B4: 21 86 5E    ld   hl,$5E86
24B7: E6 03       and  $03
24B9: 07          rlca
24BA: 85          add  a,l
24BB: 6F          ld   l,a
24BC: 30 01       jr   nc,$24BF
24BE: 24          inc  h
24BF: 7E          ld   a,(hl)
24C0: FD 77 63    ld   (iy+$63),a
24C3: 23          inc  hl
24C4: 7E          ld   a,(hl)
24C5: FD 77 67    ld   (iy+$67),a
24C8: 3E 02       ld   a,$02
24CA: F7          rst  $30
24CB: 18 CF       jr   $249C
24CD: 01 10 00    ld   bc,$0010
24D0: 09          add  hl,bc
24D1: FD 72 04    ld   (iy+$04),d
24D4: FD 73 05    ld   (iy+$05),e
24D7: FD 74 06    ld   (iy+$06),h
24DA: FD 75 07    ld   (iy+$07),l
24DD: 21 7E 5E    ld   hl,$5E7E
24E0: 7E          ld   a,(hl)
24E1: FD 77 63    ld   (iy+$63),a
24E4: 23          inc  hl
24E5: 7E          ld   a,(hl)
24E6: FD 77 67    ld   (iy+$67),a
24E9: 3E 32       ld   a,$32
24EB: 47          ld   b,a
24EC: 3A 74 81    ld   a,($8174)
24EF: 80          add  a,b
24F0: 32 74 81    ld   ($8174),a
24F3: 3E B4       ld   a,$B4
24F5: F7          rst  $30
24F6: 3E FF       ld   a,$FF
24F8: 21 58 84    ld   hl,$8458
24FB: 06 0A       ld   b,$0A
24FD: 77          ld   (hl),a
24FE: 2B          dec  hl
24FF: 10 FC       djnz $24FD
2501: 3E 01       ld   a,$01
2503: F7          rst  $30
2504: 3E FF       ld   a,$FF
2506: 32 5A 83    ld   ($835A),a
2509: 3E 00       ld   a,$00
250B: 32 34 84    ld   ($8434),a
250E: 3E 00       ld   a,$00
2510: EF          rst  $28
2511: D9          exx
2512: 79          ld   a,c
2513: D9          exx
2514: D7          rst  $10
2515: 3E 21       ld   a,$21
2517: D7          rst  $10
2518: 3E 01       ld   a,$01
251A: F7          rst  $30
251B: DD 21 67 84 ld   ix,$8467
251F: 3A 62 83    ld   a,($8362)
2522: DD BE 0D    cp   (ix+$0d)
2525: 38 16       jr   c,$253D
2527: 47          ld   b,a
2528: DD 7E 0F    ld   a,(ix+$0f)
252B: CD DE 02    call $02DE
252E: 4F          ld   c,a
252F: 80          add  a,b
2530: 32 62 83    ld   ($8362),a
2533: 32 66 83    ld   ($8366),a
2536: 3A 5E 83    ld   a,($835E)
2539: 81          add  a,c
253A: 32 5E 83    ld   ($835E),a
253D: 3E 01       ld   a,$01
253F: F7          rst  $30
2540: 18 DD       jr   $251F
2542: 3E 01       ld   a,$01
2544: F7          rst  $30
2545: DD 21 67 84 ld   ix,$8467
2549: 3A 62 83    ld   a,($8362)
254C: DD BE 0C    cp   (ix+$0c)
254F: 30 16       jr   nc,$2567
2551: 47          ld   b,a
2552: DD 7E 0E    ld   a,(ix+$0e)
2555: CD DE 02    call $02DE
2558: 4F          ld   c,a
2559: 80          add  a,b
255A: 32 62 83    ld   ($8362),a
255D: 32 66 83    ld   ($8366),a
2560: 3A 5E 83    ld   a,($835E)
2563: 81          add  a,c
2564: 32 5E 83    ld   ($835E),a
2567: 3E 01       ld   a,$01
2569: F7          rst  $30
256A: 18 DD       jr   $2549
256C: 3E 01       ld   a,$01
256E: F7          rst  $30
256F: 18 FB       jr   $256C
2571: 3E 01       ld   a,$01
2573: F7          rst  $30
2574: 06 10       ld   b,$10
2576: 18 03       jr   $257B
2578: 3E 01       ld   a,$01
257A: F7          rst  $30
257B: 3A 5B 83    ld   a,($835B)
257E: E6 80       and  $80
2580: 28 03       jr   z,$2585
2582: 3E 1C       ld   a,$1C
2584: D7          rst  $10
2585: 10 F1       djnz $2578
2587: 3E 01       ld   a,$01
2589: F7          rst  $30
258A: 3E 93       ld   a,$93
258C: 32 0B D5    ld   ($D50B),a
258F: 3A 5B 83    ld   a,($835B)
2592: F6 20       or   $20
2594: 32 5B 83    ld   ($835B),a
2597: 3A 5E 83    ld   a,($835E)
259A: C6 08       add  a,$08
259C: 32 5E 83    ld   ($835E),a
259F: 3A 5C 83    ld   a,($835C)
25A2: C6 F8       add  a,$F8
25A4: 32 5C 83    ld   ($835C),a
25A7: C6 10       add  a,$10
25A9: 32 60 83    ld   ($8360),a
25AC: C6 10       add  a,$10
25AE: 32 64 83    ld   ($8364),a
25B1: 11 78 5E    ld   de,$5E78
25B4: 1A          ld   a,(de)
25B5: 32 BE 83    ld   ($83BE),a
25B8: 13          inc  de
25B9: 1A          ld   a,(de)
25BA: 32 C2 83    ld   ($83C2),a
25BD: 3E 1D       ld   a,$1D
25BF: CF          rst  $08
25C0: 3E 08       ld   a,$08
25C2: F7          rst  $30
25C3: 13          inc  de
25C4: 1A          ld   a,(de)
25C5: 32 BE 83    ld   ($83BE),a
25C8: 13          inc  de
25C9: 1A          ld   a,(de)
25CA: 32 C2 83    ld   ($83C2),a
25CD: 3E 08       ld   a,$08
25CF: F7          rst  $30
25D0: 3E 1D       ld   a,$1D
25D2: D7          rst  $10
25D3: 3A 62 83    ld   a,($8362)
25D6: 32 5E 83    ld   ($835E),a
25D9: 3A 70 5E    ld   a,($5E70)
25DC: 32 BE 83    ld   ($83BE),a
25DF: 3A 71 5E    ld   a,($5E71)
25E2: 32 C2 83    ld   ($83C2),a
25E5: AF          xor  a
25E6: 21 55 84    ld   hl,$8455
25E9: 77          ld   (hl),a
25EA: 23          inc  hl
25EB: 77          ld   (hl),a
25EC: 3A 5B 83    ld   a,($835B)
25EF: E6 CF       and  $CF
25F1: 32 5B 83    ld   ($835B),a
25F4: D9          exx
25F5: 79          ld   a,c
25F6: D9          exx
25F7: D7          rst  $10
25F8: 3E 01       ld   a,$01
25FA: F7          rst  $30
25FB: 3A 5C 83    ld   a,($835C)
25FE: 67          ld   h,a
25FF: 3A 5E 83    ld   a,($835E)
2602: 6F          ld   l,a
2603: 3A 5B 83    ld   a,($835B)
2606: E6 A0       and  $A0
2608: FE 20       cp   $20
260A: 28 0D       jr   z,$2619
260C: E6 80       and  $80
260E: 28 06       jr   z,$2616
2610: 3E 1C       ld   a,$1C
2612: D7          rst  $10
2613: 3E 24       ld   a,$24
2615: D7          rst  $10
2616: 3E 1D       ld   a,$1D
2618: D7          rst  $10
2619: FD 21 67 83 ld   iy,$8367
261D: DD 21 B1 84 ld   ix,$84B1
2621: 06 06       ld   b,$06
2623: DD 7E 00    ld   a,(ix+$00)
2626: A7          and  a
2627: CA BF 26    jp   z,$26BF
262A: FD 7E 04    ld   a,(iy+$04)
262D: E6 81       and  $81
262F: C2 BF 26    jp   nz,$26BF
2632: 7C          ld   a,h
2633: FD 96 01    sub  (iy+$01)
2636: FE 1C       cp   $1C
2638: D2 BF 26    jp   nc,$26BF
263B: FD 7E 02    ld   a,(iy+$02)
263E: E6 01       and  $01
2640: C2 BF 26    jp   nz,$26BF
2643: 7D          ld   a,l
2644: C6 0E       add  a,$0E
2646: FD 96 03    sub  (iy+$03)
2649: FE 1C       cp   $1C
264B: 30 72       jr   nc,$26BF
264D: DD 36 00 00 ld   (ix+$00),$00
2651: DD 36 5A 20 ld   (ix+$5a),$20
2655: 3E 01       ld   a,$01
2657: FD 77 06    ld   (iy+$06),a
265A: FD 77 07    ld   (iy+$07),a
265D: 3E 08       ld   a,$08
265F: FD 86 02    add  a,(iy+$02)
2662: FD 77 02    ld   (iy+$02),a
2665: 3E A6       ld   a,$A6
2667: 32 0B D5    ld   ($D50B),a
266A: DD 56 6C    ld   d,(ix+$6c)
266D: CB 7A       bit  7,d
266F: 28 10       jr   z,$2681
2671: 3A 79 84    ld   a,($8479)
2674: FE 04       cp   $04
2676: 28 04       jr   z,$267C
2678: 3C          inc  a
2679: 32 79 84    ld   ($8479),a
267C: 7A          ld   a,d
267D: E6 0F       and  $0F
267F: 18 23       jr   $26A4
2681: 3A 78 84    ld   a,($8478)
2684: 5F          ld   e,a
2685: 7A          ld   a,d
2686: 3C          inc  a
2687: E6 7F       and  $7F
2689: 32 78 84    ld   ($8478),a
268C: 7B          ld   a,e
268D: BA          cp   d
268E: 28 03       jr   z,$2693
2690: AF          xor  a
2691: 18 03       jr   $2696
2693: 3A 79 84    ld   a,($8479)
2696: FE 04       cp   $04
2698: 28 08       jr   z,$26A2
269A: 3C          inc  a
269B: 32 79 84    ld   ($8479),a
269E: 3E 00       ld   a,$00
26A0: 18 02       jr   $26A4
26A2: 3E 01       ld   a,$01
26A4: 11 A0 5E    ld   de,$5EA0
26A7: E6 07       and  $07
26A9: 07          rlca
26AA: 83          add  a,e
26AB: 30 01       jr   nc,$26AE
26AD: 14          inc  d
26AE: 5F          ld   e,a
26AF: 1A          ld   a,(de)
26B0: FD 77 63    ld   (iy+$63),a
26B3: 13          inc  de
26B4: 1A          ld   a,(de)
26B5: 50          ld   d,b
26B6: 47          ld   b,a
26B7: 3A 74 81    ld   a,($8174)
26BA: 80          add  a,b
26BB: 32 74 81    ld   ($8174),a
26BE: 42          ld   b,d
26BF: 11 08 00    ld   de,$0008
26C2: FD 19       add  iy,de
26C4: DD 23       inc  ix
26C6: 05          dec  b
26C7: C2 23 26    jp   nz,$2623
26CA: C3 F8 25    jp   $25F8
26CD: 3E 01       ld   a,$01
26CF: F7          rst  $30
26D0: 3E 30       ld   a,$30
26D2: 32 57 84    ld   ($8457),a
26D5: 11 57 84    ld   de,$8457
26D8: 21 51 84    ld   hl,$8451
26DB: 3A 65 84    ld   a,($8465)
26DE: 47          ld   b,a
26DF: 3E 01       ld   a,$01
26E1: F7          rst  $30
26E2: 7E          ld   a,(hl)
26E3: A7          and  a
26E4: 28 49       jr   z,$272F
26E6: 10 F7       djnz $26DF
26E8: 1A          ld   a,(de)
26E9: 3D          dec  a
26EA: FE FF       cp   $FF
26EC: 28 55       jr   z,$2743
26EE: 47          ld   b,a
26EF: 3A 66 84    ld   a,($8466)
26F2: B8          cp   b
26F3: 20 05       jr   nz,$26FA
26F5: 3E 83       ld   a,$83
26F7: 32 0B D5    ld   ($D50B),a
26FA: 78          ld   a,b
26FB: 12          ld   (de),a
26FC: 13          inc  de
26FD: 01 06 00    ld   bc,$0006
2700: 21 90 5E    ld   hl,$5E90
2703: ED B0       ldir
2705: EB          ex   de,hl
2706: 16 90       ld   d,$90
2708: 4F          ld   c,a
2709: E6 F8       and  $F8
270B: 0F          rrca
270C: 0F          rrca
270D: 0F          rrca
270E: 47          ld   b,a
270F: 3E 06       ld   a,$06
2711: 90          sub  b
2712: 5F          ld   e,a
2713: 3E 08       ld   a,$08
2715: 82          add  a,d
2716: 04          inc  b
2717: 18 02       jr   $271B
2719: 77          ld   (hl),a
271A: 23          inc  hl
271B: 10 FC       djnz $2719
271D: AF          xor  a
271E: BB          cp   e
271F: 28 B4       jr   z,$26D5
2721: 79          ld   a,c
2722: E6 07       and  $07
2724: 82          add  a,d
2725: 77          ld   (hl),a
2726: 18 01       jr   $2729
2728: 72          ld   (hl),d
2729: 23          inc  hl
272A: 1D          dec  e
272B: 20 FB       jr   nz,$2728
272D: 18 A6       jr   $26D5
272F: 3E 91       ld   a,$91
2731: 32 0B D5    ld   ($D50B),a
2734: 21 07 00    ld   hl,$0007
2737: 19          add  hl,de
2738: 06 06       ld   b,$06
273A: 3E 98       ld   a,$98
273C: 77          ld   (hl),a
273D: 23          inc  hl
273E: 10 FC       djnz $273C
2740: 3E 22       ld   a,$22
2742: D7          rst  $10
2743: 3E A9       ld   a,$A9
2745: 32 0B D5    ld   ($D50B),a
2748: 3E 23       ld   a,$23
274A: CF          rst  $08
274B: 3E 22       ld   a,$22
274D: D7          rst  $10
274E: 3E 80       ld   a,$80
2750: 32 5B 83    ld   ($835B),a
2753: 3E 04       ld   a,$04
2755: F7          rst  $30
2756: 3E 25       ld   a,$25
2758: D7          rst  $10
2759: 21 56 83    ld   hl,$8356
275C: 46          ld   b,(hl)
275D: 23          inc  hl
275E: 56          ld   d,(hl)
275F: 23          inc  hl
2760: 4E          ld   c,(hl)
2761: 23          inc  hl
2762: 5E          ld   e,(hl)
2763: 21 E1 81    ld   hl,$81E1
2766: 3A 56 81    ld   a,($8156)
2769: A7          and  a
276A: 20 03       jr   nz,$276F
276C: 21 E5 81    ld   hl,$81E5
276F: 70          ld   (hl),b
2770: 23          inc  hl
2771: 71          ld   (hl),c
2772: 23          inc  hl
2773: 72          ld   (hl),d
2774: 23          inc  hl
2775: 73          ld   (hl),e
2776: 3E 21       ld   a,$21
2778: D7          rst  $10
2779: 3E 22       ld   a,$22
277B: D7          rst  $10
277C: 3E 24       ld   a,$24
277E: D7          rst  $10
277F: 3E 04       ld   a,$04
2781: D7          rst  $10
2782: 21 52 84    ld   hl,$8452
2785: 7E          ld   a,(hl)
2786: D7          rst  $10
2787: 23          inc  hl
2788: 7E          ld   a,(hl)
2789: D7          rst  $10
278A: 3E 01       ld   a,$01
278C: F7          rst  $30
278D: 3E 3F       ld   a,$3F
278F: 32 C6 83    ld   ($83C6),a
2792: 21 80 5E    ld   hl,$5E80
2795: 3A 62 83    ld   a,($8362)
2798: 32 5E 83    ld   ($835E),a
279B: 7E          ld   a,(hl)
279C: 32 BE 83    ld   ($83BE),a
279F: 23          inc  hl
27A0: 7E          ld   a,(hl)
27A1: 32 C2 83    ld   ($83C2),a
27A4: 3E 02       ld   a,$02
27A6: 32 75 84    ld   ($8475),a
27A9: 3E 80       ld   a,$80
27AB: 32 3B 84    ld   ($843B),a
27AE: 3E 1F       ld   a,$1F
27B0: CF          rst  $08
27B1: 3A 73 84    ld   a,($8473)
27B4: 47          ld   b,a
27B5: 3E 01       ld   a,$01
27B7: F7          rst  $30
27B8: 3A 5E 83    ld   a,($835E)
27BB: B8          cp   b
27BC: 38 F7       jr   c,$27B5
27BE: 3E 1F       ld   a,$1F
27C0: D7          rst  $10
27C1: 3E A8       ld   a,$A8
27C3: 32 0B D5    ld   ($D50B),a
27C6: 06 11       ld   b,$11
27C8: 3E 08       ld   a,$08
27CA: F7          rst  $30
27CB: 21 82 5E    ld   hl,$5E82
27CE: 78          ld   a,b
27CF: E6 01       and  $01
27D1: 07          rlca
27D2: 85          add  a,l
27D3: 6F          ld   l,a
27D4: 30 01       jr   nc,$27D7
27D6: 24          inc  h
27D7: 7E          ld   a,(hl)
27D8: 23          inc  hl
27D9: 32 BE 83    ld   ($83BE),a
27DC: 7E          ld   a,(hl)
27DD: 32 C2 83    ld   ($83C2),a
27E0: 10 E6       djnz $27C8
27E2: 3E 1E       ld   a,$1E
27E4: F7          rst  $30
27E5: 3E FF       ld   a,$FF
27E7: 32 5A 83    ld   ($835A),a
27EA: 3E FF       ld   a,$FF
27EC: 32 34 84    ld   ($8434),a
27EF: 3E 00       ld   a,$00
27F1: EF          rst  $28
27F2: D9          exx
27F3: 79          ld   a,c
27F4: D9          exx
27F5: D7          rst  $10
27F6: 3E 23       ld   a,$23
27F8: D7          rst  $10
27F9: 3E 01       ld   a,$01
27FB: F7          rst  $30
27FC: 21 7B 84    ld   hl,$847B
27FF: 7E          ld   a,(hl)
2800: 3C          inc  a
2801: FE 10       cp   $10
2803: 38 1E       jr   c,$2823
2805: AF          xor  a
2806: 77          ld   (hl),a
2807: 23          inc  hl
2808: 7E          ld   a,(hl)
2809: 3C          inc  a
280A: E6 03       and  $03
280C: 77          ld   (hl),a
280D: 21 00 52    ld   hl,$5200
2810: 1E 00       ld   e,$00
2812: 1F          rra
2813: CB 1B       rr   e
2815: 1F          rra
2816: CB 1B       rr   e
2818: 57          ld   d,a
2819: 19          add  hl,de
281A: 11 37 84    ld   de,$8437
281D: EB          ex   de,hl
281E: 72          ld   (hl),d
281F: 23          inc  hl
2820: 73          ld   (hl),e
2821: 18 01       jr   $2824
2823: 77          ld   (hl),a
2824: D9          exx
2825: 3A 48 83    ld   a,($8348)
2828: 67          ld   h,a
2829: 11 08 00    ld   de,$0008
282C: D9          exx
282D: FD 21 67 83 ld   iy,$8367
2831: DD 21 B1 84 ld   ix,$84B1
2835: 06 00       ld   b,$00
2837: FD 4E F4    ld   c,(iy-$0c)
283A: FD 66 F5    ld   h,(iy-$0b)
283D: FD 6E FB    ld   l,(iy-$05)
2840: DD 7E 00    ld   a,(ix+$00)
2843: A7          and  a
2844: 28 41       jr   z,$2887
2846: CB 79       bit  7,c
2848: 20 3D       jr   nz,$2887
284A: FD 7E 02    ld   a,(iy+$02)
284D: E6 01       and  $01
284F: 20 36       jr   nz,$2887
2851: FD 7E 00    ld   a,(iy+$00)
2854: E6 01       and  $01
2856: 20 2F       jr   nz,$2887
2858: 16 24       ld   d,$24
285A: FD 7E 04    ld   a,(iy+$04)
285D: E6 80       and  $80
285F: 20 08       jr   nz,$2869
2861: 16 20       ld   d,$20
2863: CB 69       bit  5,c
2865: 28 02       jr   z,$2869
2867: 16 18       ld   d,$18
2869: 7C          ld   a,h
286A: C6 08       add  a,$08
286C: FD 96 01    sub  (iy+$01)
286F: BA          cp   d
2870: 30 15       jr   nc,$2887
2872: 7D          ld   a,l
2873: C6 0C       add  a,$0C
2875: FD 96 03    sub  (iy+$03)
2878: FE 18       cp   $18
287A: 30 0B       jr   nc,$2887
287C: 3E A7       ld   a,$A7
287E: 32 0B D5    ld   ($D50B),a
2881: 3E 23       ld   a,$23
2883: CF          rst  $08
2884: 3E 25       ld   a,$25
2886: D7          rst  $10
2887: DD 23       inc  ix
2889: D9          exx
288A: FD 7E 01    ld   a,(iy+$01)
288D: 84          add  a,h
288E: FD 77 01    ld   (iy+$01),a
2891: 30 03       jr   nc,$2896
2893: FD 34 00    inc  (iy+$00)
2896: FD 7E 05    ld   a,(iy+$05)
2899: 84          add  a,h
289A: FD 77 05    ld   (iy+$05),a
289D: 30 03       jr   nc,$28A2
289F: FD 34 04    inc  (iy+$04)
28A2: FD 19       add  iy,de
28A4: D9          exx
28A5: 04          inc  b
28A6: 78          ld   a,b
28A7: FE 06       cp   $06
28A9: 38 95       jr   c,$2840
28AB: 20 06       jr   nz,$28B3
28AD: D9          exx
28AE: 3A 49 83    ld   a,($8349)
28B1: 67          ld   h,a
28B2: D9          exx
28B3: FE 0A       cp   $0A
28B5: 20 D0       jr   nz,$2887
28B7: DD 21 81 84 ld   ix,$8481
28BB: 3A 49 83    ld   a,($8349)
28BE: 4F          ld   c,a
28BF: 06 04       ld   b,$04
28C1: DD 7E 18    ld   a,(ix+$18)
28C4: A7          and  a
28C5: CA 5E 29    jp   z,$295E
28C8: DD 56 00    ld   d,(ix+$00)
28CB: DD 5E 04    ld   e,(ix+$04)
28CE: 26 00       ld   h,$00
28D0: 69          ld   l,c
28D1: 19          add  hl,de
28D2: EB          ex   de,hl
28D3: 21 10 03    ld   hl,$0310
28D6: A7          and  a
28D7: ED 52       sbc  hl,de
28D9: 30 07       jr   nc,$28E2
28DB: DD 36 18 00 ld   (ix+$18),$00
28DF: C3 5E 29    jp   $295E
28E2: DD 72 00    ld   (ix+$00),d
28E5: DD 73 04    ld   (ix+$04),e
28E8: DD 66 10    ld   h,(ix+$10)
28EB: DD 6E 14    ld   l,(ix+$14)
28EE: 7A          ld   a,d
28EF: BC          cp   h
28F0: 38 6C       jr   c,$295E
28F2: 20 04       jr   nz,$28F8
28F4: 7B          ld   a,e
28F5: BD          cp   l
28F6: 38 66       jr   c,$295E
28F8: DD 7E 1C    ld   a,(ix+$1c)
28FB: E6 07       and  $07
28FD: 07          rlca
28FE: 07          rlca
28FF: 07          rlca
2900: 6F          ld   l,a
2901: DD 7E 18    ld   a,(ix+$18)
2904: 3D          dec  a
2905: E6 03       and  $03
2907: 07          rlca
2908: 85          add  a,l
2909: 6F          ld   l,a
290A: C5          push bc
290B: DD E5       push ix
290D: 3E BB       ld   a,$BB
290F: 32 0B D5    ld   ($D50B),a
2912: DD 21 B9 84 ld   ix,$84B9
2916: FD 21 9F 83 ld   iy,$839F
291A: 26 06       ld   h,$06
291C: 01 04 00    ld   bc,$0004
291F: CD C6 2A    call $2AC6
2922: BC          cp   h
2923: 28 36       jr   z,$295B
2925: 26 00       ld   h,$00
2927: 01 F0 5E    ld   bc,$5EF0
292A: 09          add  hl,bc
292B: 46          ld   b,(hl)
292C: DD 70 00    ld   (ix+$00),b
292F: 23          inc  hl
2930: 4E          ld   c,(hl)
2931: DD 71 12    ld   (ix+$12),c
2934: 03          inc  bc
2935: 03          inc  bc
2936: 0A          ld   a,(bc)
2937: DD 77 24    ld   (ix+$24),a
293A: DD 36 5A 00 ld   (ix+$5a),$00
293E: DD 36 6C 00 ld   (ix+$6c),$00
2942: DD E1       pop  ix
2944: DD 7E 08    ld   a,(ix+$08)
2947: FD 77 02    ld   (iy+$02),a
294A: DD 7E 0C    ld   a,(ix+$0c)
294D: FD 77 03    ld   (iy+$03),a
2950: FD 72 00    ld   (iy+$00),d
2953: FD 73 01    ld   (iy+$01),e
2956: DD 35 18    dec  (ix+$18)
2959: 18 02       jr   $295D
295B: DD E1       pop  ix
295D: C1          pop  bc
295E: DD 23       inc  ix
2960: 05          dec  b
2961: C2 C1 28    jp   nz,$28C1
2964: 3A 7A 84    ld   a,($847A)
2967: FE FF       cp   $FF
2969: CA C3 2A    jp   z,$2AC3
296C: 11 7F 84    ld   de,$847F
296F: 21 7D 84    ld   hl,$847D
2972: 06 00       ld   b,$00
2974: 3A 48 83    ld   a,($8348)
2977: 86          add  a,(hl)
2978: 30 01       jr   nc,$297B
297A: 04          inc  b
297B: 77          ld   (hl),a
297C: EB          ex   de,hl
297D: 56          ld   d,(hl)
297E: 23          inc  hl
297F: 5E          ld   e,(hl)
2980: EB          ex   de,hl
2981: 96          sub  (hl)
2982: 4F          ld   c,a
2983: EB          ex   de,hl
2984: 78          ld   a,b
2985: DE 00       sbc  a,$00
2987: DA C3 2A    jp   c,$2AC3
298A: 79          ld   a,c
298B: 32 7D 84    ld   ($847D),a
298E: 13          inc  de
298F: 1A          ld   a,(de)
2990: 13          inc  de
2991: A7          and  a
2992: CA BB 2A    jp   z,$2ABB
2995: FE 02       cp   $02
2997: 30 5F       jr   nc,$29F8
2999: DD 21 B1 84 ld   ix,$84B1
299D: FD 21 67 83 ld   iy,$8367
29A1: 01 08 00    ld   bc,$0008
29A4: 26 04       ld   h,$04
29A6: CD C6 2A    call $2AC6
29A9: BC          cp   h
29AA: CA BB 2A    jp   z,$2ABB
29AD: FD 36 02 00 ld   (iy+$02),$00
29B1: 1A          ld   a,(de)
29B2: FD 77 03    ld   (iy+$03),a
29B5: FD 36 00 01 ld   (iy+$00),$01
29B9: FD 36 01 D0 ld   (iy+$01),$D0
29BD: 13          inc  de
29BE: 1A          ld   a,(de)
29BF: E6 1F       and  $1F
29C1: 07          rlca
29C2: 07          rlca
29C3: 21 B0 5E    ld   hl,$5EB0
29C6: 85          add  a,l
29C7: 30 01       jr   nc,$29CA
29C9: 24          inc  h
29CA: 6F          ld   l,a
29CB: 46          ld   b,(hl)
29CC: DD 70 00    ld   (ix+$00),b
29CF: 23          inc  hl
29D0: 4E          ld   c,(hl)
29D1: DD 71 12    ld   (ix+$12),c
29D4: 03          inc  bc
29D5: 03          inc  bc
29D6: 0A          ld   a,(bc)
29D7: DD 77 24    ld   (ix+$24),a
29DA: 23          inc  hl
29DB: 7E          ld   a,(hl)
29DC: DD 77 36    ld   (ix+$36),a
29DF: 23          inc  hl
29E0: 7E          ld   a,(hl)
29E1: DD 77 48    ld   (ix+$48),a
29E4: 3A 77 84    ld   a,($8477)
29E7: 3C          inc  a
29E8: E6 7F       and  $7F
29EA: 32 77 84    ld   ($8477),a
29ED: DD 77 6C    ld   (ix+$6c),a
29F0: 3E A4       ld   a,$A4
29F2: 32 0B D5    ld   ($D50B),a
29F5: C3 BC 2A    jp   $2ABC
29F8: 20 4E       jr   nz,$2A48
29FA: DD 21 B5 84 ld   ix,$84B5
29FE: FD 21 87 83 ld   iy,$8387
2A02: 01 08 00    ld   bc,$0008
2A05: 26 02       ld   h,$02
2A07: CD C6 2A    call $2AC6
2A0A: BC          cp   h
2A0B: CA BB 2A    jp   z,$2ABB
2A0E: AF          xor  a
2A0F: FD 77 02    ld   (iy+$02),a
2A12: FD 77 06    ld   (iy+$06),a
2A15: 1A          ld   a,(de)
2A16: FD 77 03    ld   (iy+$03),a
2A19: FD 36 00 01 ld   (iy+$00),$01
2A1D: FD 36 01 D0 ld   (iy+$01),$D0
2A21: 13          inc  de
2A22: 1A          ld   a,(de)
2A23: E6 07       and  $07
2A25: 06 86       ld   b,$86
2A27: CB 57       bit  2,a
2A29: 28 02       jr   z,$2A2D
2A2B: 06 87       ld   b,$87
2A2D: DD 70 6C    ld   (ix+$6c),b
2A30: 07          rlca
2A31: 07          rlca
2A32: 07          rlca
2A33: 21 F0 5D    ld   hl,$5DF0
2A36: 85          add  a,l
2A37: 30 01       jr   nc,$2A3A
2A39: 24          inc  h
2A3A: DD 74 00    ld   (ix+$00),h
2A3D: DD 77 12    ld   (ix+$12),a
2A40: 3E A4       ld   a,$A4
2A42: 32 0B D5    ld   ($D50B),a
2A45: C3 BC 2A    jp   $2ABC
2A48: FE 04       cp   $04
2A4A: 30 18       jr   nc,$2A64
2A4C: FD 21 97 83 ld   iy,$8397
2A50: DD 21 B7 84 ld   ix,$84B7
2A54: 01 04 00    ld   bc,$0004
2A57: 26 02       ld   h,$02
2A59: CD C6 2A    call $2AC6
2A5C: BC          cp   h
2A5D: CA BB 2A    jp   z,$2ABB
2A60: 13          inc  de
2A61: C3 BC 2A    jp   $2ABC
2A64: C2 B4 2A    jp   nz,$2AB4
2A67: DD 21 81 84 ld   ix,$8481
2A6B: 06 04       ld   b,$04
2A6D: AF          xor  a
2A6E: DD BE 18    cp   (ix+$18)
2A71: 28 07       jr   z,$2A7A
2A73: DD 23       inc  ix
2A75: 10 F7       djnz $2A6E
2A77: C3 BB 2A    jp   $2ABB
2A7A: 1A          ld   a,(de)
2A7B: 06 00       ld   b,$00
2A7D: CB 7F       bit  7,a
2A7F: 28 03       jr   z,$2A84
2A81: ED 44       neg
2A83: 04          inc  b
2A84: DD 70 08    ld   (ix+$08),b
2A87: DD 77 0C    ld   (ix+$0c),a
2A8A: DD 36 00 01 ld   (ix+$00),$01
2A8E: DD 36 04 E4 ld   (ix+$04),$E4
2A92: 13          inc  de
2A93: 1A          ld   a,(de)
2A94: E6 0F       and  $0F
2A96: 07          rlca
2A97: 07          rlca
2A98: 4F          ld   c,a
2A99: 06 00       ld   b,$00
2A9B: 21 30 5F    ld   hl,$5F30
2A9E: 09          add  hl,bc
2A9F: 7E          ld   a,(hl)
2AA0: DD 77 10    ld   (ix+$10),a
2AA3: 23          inc  hl
2AA4: 7E          ld   a,(hl)
2AA5: DD 77 14    ld   (ix+$14),a
2AA8: 23          inc  hl
2AA9: 7E          ld   a,(hl)
2AAA: DD 77 18    ld   (ix+$18),a
2AAD: 23          inc  hl
2AAE: 7E          ld   a,(hl)
2AAF: DD 77 1C    ld   (ix+$1c),a
2AB2: 18 08       jr   $2ABC
2AB4: FE FF       cp   $FF
2AB6: 20 03       jr   nz,$2ABB
2AB8: 32 7A 84    ld   ($847A),a
2ABB: 13          inc  de
2ABC: 13          inc  de
2ABD: 21 7F 84    ld   hl,$847F
2AC0: 72          ld   (hl),d
2AC1: 23          inc  hl
2AC2: 73          ld   (hl),e
2AC3: C3 F9 27    jp   $27F9
2AC6: AF          xor  a
2AC7: DD BE 00    cp   (ix+$00)
2ACA: 20 04       jr   nz,$2AD0
2ACC: DD BE 5A    cp   (ix+$5a)
2ACF: C8          ret  z
2AD0: DD 23       inc  ix
2AD2: FD 09       add  iy,bc
2AD4: 25          dec  h
2AD5: 20 F0       jr   nz,$2AC7
2AD7: C9          ret
2AD8: DD 56 00    ld   d,(ix+$00)
2ADB: AF          xor  a
2ADC: 47          ld   b,a
2ADD: BA          cp   d
2ADE: 20 0D       jr   nz,$2AED
2AE0: DD 7E 5A    ld   a,(ix+$5a)
2AE3: A7          and  a
2AE4: 28 30       jr   z,$2B16
2AE6: 3D          dec  a
2AE7: DD 77 5A    ld   (ix+$5a),a
2AEA: 3E 01       ld   a,$01
2AEC: C9          ret
2AED: DD 5E 12    ld   e,(ix+$12)
2AF0: 1A          ld   a,(de)
2AF1: 4F          ld   c,a
2AF2: CB 79       bit  7,c
2AF4: 28 02       jr   z,$2AF8
2AF6: 06 FF       ld   b,$FF
2AF8: FD 66 00    ld   h,(iy+$00)
2AFB: FD 6E 01    ld   l,(iy+$01)
2AFE: 09          add  hl,bc
2AFF: FD 74 00    ld   (iy+$00),h
2B02: FD 75 01    ld   (iy+$01),l
2B05: E5          push hl
2B06: A7          and  a
2B07: 01 00 03    ld   bc,$0300
2B0A: ED 42       sbc  hl,bc
2B0C: 38 11       jr   c,$2B1F
2B0E: E1          pop  hl
2B0F: AF          xor  a
2B10: DD 77 00    ld   (ix+$00),a
2B13: DD 77 5A    ld   (ix+$5a),a
2B16: 16 01       ld   d,$01
2B18: FD 72 02    ld   (iy+$02),d
2B1B: FD 72 03    ld   (iy+$03),d
2B1E: C9          ret
2B1F: 06 00       ld   b,$00
2B21: 13          inc  de
2B22: 1A          ld   a,(de)
2B23: 4F          ld   c,a
2B24: CB 79       bit  7,c
2B26: 28 02       jr   z,$2B2A
2B28: 06 FF       ld   b,$FF
2B2A: FD 66 02    ld   h,(iy+$02)
2B2D: FD 6E 03    ld   l,(iy+$03)
2B30: 09          add  hl,bc
2B31: FD 74 02    ld   (iy+$02),h
2B34: FD 75 03    ld   (iy+$03),l
2B37: 13          inc  de
2B38: 13          inc  de
2B39: 1A          ld   a,(de)
2B3A: 08          ex   af,af'
2B3B: DD 7E 24    ld   a,(ix+$24)
2B3E: 3D          dec  a
2B3F: 28 07       jr   z,$2B48
2B41: DD 77 24    ld   (ix+$24),a
2B44: D1          pop  de
2B45: 3E 02       ld   a,$02
2B47: C9          ret
2B48: 13          inc  de
2B49: 42          ld   b,d
2B4A: 4B          ld   c,e
2B4B: 13          inc  de
2B4C: 13          inc  de
2B4D: 1A          ld   a,(de)
2B4E: 16 02       ld   d,$02
2B50: A7          and  a
2B51: 20 1C       jr   nz,$2B6F
2B53: DD 35 5A    dec  (ix+$5a)
2B56: 20 01       jr   nz,$2B59
2B58: 14          inc  d
2B59: 14          inc  d
2B5A: DD 46 36    ld   b,(ix+$36)
2B5D: DD 4E 48    ld   c,(ix+$48)
2B60: DD 70 00    ld   (ix+$00),b
2B63: DD 71 12    ld   (ix+$12),c
2B66: 03          inc  bc
2B67: 03          inc  bc
2B68: 0A          ld   a,(bc)
2B69: DD 77 24    ld   (ix+$24),a
2B6C: 7A          ld   a,d
2B6D: D1          pop  de
2B6E: C9          ret
2B6F: DD 70 00    ld   (ix+$00),b
2B72: DD 71 12    ld   (ix+$12),c
2B75: DD 77 24    ld   (ix+$24),a
2B78: 7A          ld   a,d
2B79: D1          pop  de
2B7A: C9          ret
2B7B: 3E 01       ld   a,$01
2B7D: F7          rst  $30
2B7E: DD 21 B1 84 ld   ix,$84B1
2B82: FD 21 67 83 ld   iy,$8367
2B86: 06 04       ld   b,$04
2B88: C5          push bc
2B89: CD D8 2A    call $2AD8
2B8C: FE 01       cp   $01
2B8E: 28 5B       jr   z,$2BEB
2B90: 30 0A       jr   nc,$2B9C
2B92: FD 36 06 01 ld   (iy+$06),$01
2B96: FD 36 07 01 ld   (iy+$07),$01
2B9A: 18 4F       jr   $2BEB
2B9C: 01 10 00    ld   bc,$0010
2B9F: EB          ex   de,hl
2BA0: 09          add  hl,bc
2BA1: 0E 00       ld   c,$00
2BA3: 3A 5B 83    ld   a,($835B)
2BA6: E6 20       and  $20
2BA8: 28 0A       jr   z,$2BB4
2BAA: 0C          inc  c
2BAB: FD 7E 04    ld   a,(iy+$04)
2BAE: E6 80       and  $80
2BB0: B4          or   h
2BB1: 67          ld   h,a
2BB2: 18 15       jr   $2BC9
2BB4: 08          ex   af,af'
2BB5: 47          ld   b,a
2BB6: E6 03       and  $03
2BB8: 20 0F       jr   nz,$2BC9
2BBA: FD CB 04 7E bit  7,(iy+$04)
2BBE: 20 05       jr   nz,$2BC5
2BC0: 3E A5       ld   a,$A5
2BC2: 32 0B D5    ld   ($D50B),a
2BC5: 7C          ld   a,h
2BC6: F6 80       or   $80
2BC8: 67          ld   h,a
2BC9: FD 74 04    ld   (iy+$04),h
2BCC: FD 75 05    ld   (iy+$05),l
2BCF: FD 72 06    ld   (iy+$06),d
2BD2: FD 73 07    ld   (iy+$07),e
2BD5: 0D          dec  c
2BD6: 28 13       jr   z,$2BEB
2BD8: 78          ld   a,b
2BD9: 01 70 5F    ld   bc,$5F70
2BDC: 07          rlca
2BDD: 81          add  a,c
2BDE: 4F          ld   c,a
2BDF: 30 01       jr   nc,$2BE2
2BE1: 04          inc  b
2BE2: 0A          ld   a,(bc)
2BE3: FD 77 63    ld   (iy+$63),a
2BE6: 03          inc  bc
2BE7: 0A          ld   a,(bc)
2BE8: FD 77 67    ld   (iy+$67),a
2BEB: C1          pop  bc
2BEC: DD 23       inc  ix
2BEE: 11 08 00    ld   de,$0008
2BF1: FD 19       add  iy,de
2BF3: 10 93       djnz $2B88
2BF5: 3E 01       ld   a,$01
2BF7: F7          rst  $30
2BF8: 06 02       ld   b,$02
2BFA: C5          push bc
2BFB: DD 7E 00    ld   a,(ix+$00)
2BFE: A7          and  a
2BFF: 20 22       jr   nz,$2C23
2C01: DD 7E 5A    ld   a,(ix+$5a)
2C04: A7          and  a
2C05: CA 53 2D    jp   z,$2D53
2C08: DD 35 5A    dec  (ix+$5a)
2C0B: C2 53 2D    jp   nz,$2D53
2C0E: DD 36 00 00 ld   (ix+$00),$00
2C12: 0E 01       ld   c,$01
2C14: FD 71 02    ld   (iy+$02),c
2C17: FD 71 03    ld   (iy+$03),c
2C1A: FD 71 06    ld   (iy+$06),c
2C1D: FD 71 07    ld   (iy+$07),c
2C20: C3 53 2D    jp   $2D53
2C23: FD 56 00    ld   d,(iy+$00)
2C26: FD 5E 01    ld   e,(iy+$01)
2C29: 21 00 03    ld   hl,$0300
2C2C: ED 52       sbc  hl,de
2C2E: 38 DE       jr   c,$2C0E
2C30: 67          ld   h,a
2C31: DD 6E 12    ld   l,(ix+$12)
2C34: 7E          ld   a,(hl)
2C35: 23          inc  hl
2C36: DD 4E 48    ld   c,(ix+$48)
2C39: CB 41       bit  0,c
2C3B: 0F          rrca
2C3C: 28 02       jr   z,$2C40
2C3E: CE 00       adc  a,$00
2C40: E6 0F       and  $0F
2C42: 83          add  a,e
2C43: FD 77 01    ld   (iy+$01),a
2C46: 5F          ld   e,a
2C47: 7A          ld   a,d
2C48: CE 00       adc  a,$00
2C4A: FD 77 00    ld   (iy+$00),a
2C4D: 57          ld   d,a
2C4E: 7B          ld   a,e
2C4F: C6 10       add  a,$10
2C51: FD 77 05    ld   (iy+$05),a
2C54: 7A          ld   a,d
2C55: CE 00       adc  a,$00
2C57: 57          ld   d,a
2C58: FD 7E 04    ld   a,(iy+$04)
2C5B: E6 80       and  $80
2C5D: B2          or   d
2C5E: FD 77 04    ld   (iy+$04),a
2C61: 16 00       ld   d,$00
2C63: 3A 5C 83    ld   a,($835C)
2C66: 47          ld   b,a
2C67: BE          cp   (hl)
2C68: 23          inc  hl
2C69: 38 07       jr   c,$2C72
2C6B: 3A 5E 83    ld   a,($835E)
2C6E: BE          cp   (hl)
2C6F: 38 01       jr   c,$2C72
2C71: 14          inc  d
2C72: 23          inc  hl
2C73: 78          ld   a,b
2C74: 93          sub  e
2C75: BE          cp   (hl)
2C76: 30 01       jr   nc,$2C79
2C78: 23          inc  hl
2C79: 23          inc  hl
2C7A: 08          ex   af,af'
2C7B: DD 5E 24    ld   e,(ix+$24)
2C7E: 46          ld   b,(hl)
2C7F: 78          ld   a,b
2C80: E6 0F       and  $0F
2C82: 0C          inc  c
2C83: B9          cp   c
2C84: 30 1D       jr   nc,$2CA3
2C86: 78          ld   a,b
2C87: E6 F0       and  $F0
2C89: 0F          rrca
2C8A: 0F          rrca
2C8B: 0F          rrca
2C8C: 0F          rrca
2C8D: 47          ld   b,a
2C8E: 0E 00       ld   c,$00
2C90: 7B          ld   a,e
2C91: 3C          inc  a
2C92: E6 01       and  $01
2C94: 5F          ld   e,a
2C95: DD 7E 5A    ld   a,(ix+$5a)
2C98: 3C          inc  a
2C99: E6 07       and  $07
2C9B: DD 77 5A    ld   (ix+$5a),a
2C9E: B8          cp   b
2C9F: 38 02       jr   c,$2CA3
2CA1: 1E 02       ld   e,$02
2CA3: 3A 5B 83    ld   a,($835B)
2CA6: E6 20       and  $20
2CA8: 20 52       jr   nz,$2CFC
2CAA: DD 71 48    ld   (ix+$48),c
2CAD: 7B          ld   a,e
2CAE: DD 77 24    ld   (ix+$24),a
2CB1: FE 01       cp   $01
2CB3: FD 7E 04    ld   a,(iy+$04)
2CB6: 38 20       jr   c,$2CD8
2CB8: 28 31       jr   z,$2CEB
2CBA: CB 7F       bit  7,a
2CBC: 20 07       jr   nz,$2CC5
2CBE: 08          ex   af,af'
2CBF: 3E A5       ld   a,$A5
2CC1: 32 0B D5    ld   ($D50B),a
2CC4: 08          ex   af,af'
2CC5: F6 80       or   $80
2CC7: FD 77 04    ld   (iy+$04),a
2CCA: 3A 88 5F    ld   a,($5F88)
2CCD: FD 77 63    ld   (iy+$63),a
2CD0: 3A 89 5F    ld   a,($5F89)
2CD3: FD 77 67    ld   (iy+$67),a
2CD6: 18 24       jr   $2CFC
2CD8: E6 03       and  $03
2CDA: FD 77 04    ld   (iy+$04),a
2CDD: 3A 8A 5F    ld   a,($5F8A)
2CE0: FD 77 63    ld   (iy+$63),a
2CE3: 3A 8B 5F    ld   a,($5F8B)
2CE6: FD 77 67    ld   (iy+$67),a
2CE9: 18 11       jr   $2CFC
2CEB: E6 03       and  $03
2CED: FD 77 04    ld   (iy+$04),a
2CF0: 3A 8C 5F    ld   a,($5F8C)
2CF3: FD 77 63    ld   (iy+$63),a
2CF6: 3A 8D 5F    ld   a,($5F8D)
2CF9: FD 77 67    ld   (iy+$67),a
2CFC: 23          inc  hl
2CFD: 23          inc  hl
2CFE: 4E          ld   c,(hl)
2CFF: 1E 00       ld   e,$00
2D01: FD 46 03    ld   b,(iy+$03)
2D04: 3A 62 83    ld   a,($8362)
2D07: CB 79       bit  7,c
2D09: 28 09       jr   z,$2D14
2D0B: 08          ex   af,af'
2D0C: 00          nop
2D0D: E6 3F       and  $3F
2D0F: D6 20       sub  $20
2D11: 6F          ld   l,a
2D12: 08          ex   af,af'
2D13: 85          add  a,l
2D14: 90          sub  b
2D15: 30 03       jr   nc,$2D1A
2D17: ED 44       neg
2D19: 1C          inc  e
2D1A: CB 61       bit  4,c
2D1C: 20 0C       jr   nz,$2D2A
2D1E: 67          ld   h,a
2D1F: 3A 5B 83    ld   a,($835B)
2D22: A1          and  c
2D23: E6 60       and  $60
2D25: 20 03       jr   nz,$2D2A
2D27: 15          dec  d
2D28: 28 03       jr   z,$2D2D
2D2A: 26 FF       ld   h,$FF
2D2C: 1C          inc  e
2D2D: 79          ld   a,c
2D2E: E6 0F       and  $0F
2D30: BC          cp   h
2D31: 38 01       jr   c,$2D34
2D33: 7C          ld   a,h
2D34: 1D          dec  e
2D35: 20 02       jr   nz,$2D39
2D37: ED 44       neg
2D39: 80          add  a,b
2D3A: D6 08       sub  $08
2D3C: FE 76       cp   $76
2D3E: 38 0B       jr   c,$2D4B
2D40: 16 00       ld   d,$00
2D42: FE C0       cp   $C0
2D44: 38 03       jr   c,$2D49
2D46: AF          xor  a
2D47: 18 02       jr   $2D4B
2D49: 3E 76       ld   a,$76
2D4B: C6 08       add  a,$08
2D4D: FD 77 03    ld   (iy+$03),a
2D50: FD 77 07    ld   (iy+$07),a
2D53: DD 23       inc  ix
2D55: 11 08 00    ld   de,$0008
2D58: FD 19       add  iy,de
2D5A: C1          pop  bc
2D5B: 05          dec  b
2D5C: C2 FA 2B    jp   nz,$2BFA
2D5F: 01 08 00    ld   bc,$0008
2D62: FD 09       add  iy,bc
2D64: DD 23       inc  ix
2D66: DD 23       inc  ix
2D68: 06 06       ld   b,$06
2D6A: C5          push bc
2D6B: CD D8 2A    call $2AD8
2D6E: FE 02       cp   $02
2D70: DA B2 2E    jp   c,$2EB2
2D73: 28 39       jr   z,$2DAE
2D75: DD 36 00 00 ld   (ix+$00),$00
2D79: DD 36 5A 00 ld   (ix+$5a),$00
2D7D: FD 36 00 01 ld   (iy+$00),$01
2D81: FD 36 01 01 ld   (iy+$01),$01
2D85: AF          xor  a
2D86: DD BE 6C    cp   (ix+$6c)
2D89: CA B2 2E    jp   z,$2EB2
2D8C: AF          xor  a
2D8D: DD 77 6C    ld   (ix+$6c),a
2D90: 21 B9 83    ld   hl,$83B9
2D93: 3E 01       ld   a,$01
2D95: 77          ld   (hl),a
2D96: 23          inc  hl
2D97: 77          ld   (hl),a
2D98: 3E 3F       ld   a,$3F
2D9A: 32 1A 84    ld   ($841A),a
2D9D: 3A 5B 83    ld   a,($835B)
2DA0: E6 BF       and  $BF
2DA2: 32 5B 83    ld   ($835B),a
2DA5: C2 B2 2E    jp   nz,$2EB2
2DA8: 3E 2C       ld   a,$2C
2DAA: CF          rst  $08
2DAB: C3 B2 2E    jp   $2EB2
2DAE: DD 7E 6C    ld   a,(ix+$6c)
2DB1: A7          and  a
2DB2: 20 5B       jr   nz,$2E0F
2DB4: 21 5B 83    ld   hl,$835B
2DB7: 7E          ld   a,(hl)
2DB8: E6 C0       and  $C0
2DBA: C2 89 2E    jp   nz,$2E89
2DBD: 23          inc  hl
2DBE: FD 7E 00    ld   a,(iy+$00)
2DC1: E6 01       and  $01
2DC3: C2 89 2E    jp   nz,$2E89
2DC6: FD 7E 01    ld   a,(iy+$01)
2DC9: C6 08       add  a,$08
2DCB: 96          sub  (hl)
2DCC: FE 20       cp   $20
2DCE: D2 89 2E    jp   nc,$2E89
2DD1: FD 7E 02    ld   a,(iy+$02)
2DD4: E6 01       and  $01
2DD6: C2 89 2E    jp   nz,$2E89
2DD9: 23          inc  hl
2DDA: 23          inc  hl
2DDB: FD 7E 03    ld   a,(iy+$03)
2DDE: C6 08       add  a,$08
2DE0: 96          sub  (hl)
2DE1: FE 0C       cp   $0C
2DE3: D2 89 2E    jp   nc,$2E89
2DE6: 3E BC       ld   a,$BC
2DE8: 32 0B D5    ld   ($D50B),a
2DEB: 21 52 84    ld   hl,$8452
2DEE: 7E          ld   a,(hl)
2DEF: D7          rst  $10
2DF0: 36 2D       ld   (hl),$2D
2DF2: 3E 2D       ld   a,$2D
2DF4: CF          rst  $08
2DF5: 23          inc  hl
2DF6: 7E          ld   a,(hl)
2DF7: D7          rst  $10
2DF8: 36 2C       ld   (hl),$2C
2DFA: 3A 5B 83    ld   a,($835B)
2DFD: F6 40       or   $40
2DFF: 32 5B 83    ld   ($835B),a
2E02: 3E FF       ld   a,$FF
2E04: DD 77 6C    ld   (ix+$6c),a
2E07: 3E 3F       ld   a,$3F
2E09: 32 C6 83    ld   ($83C6),a
2E0C: C3 B2 2E    jp   $2EB2
2E0F: 3A 5B 83    ld   a,($835B)
2E12: E6 A0       and  $A0
2E14: 20 17       jr   nz,$2E2D
2E16: 3A D8 81    ld   a,($81D8)
2E19: CB 47       bit  0,a
2E1B: 20 04       jr   nz,$2E21
2E1D: 3E FF       ld   a,$FF
2E1F: 18 06       jr   $2E27
2E21: CB 4F       bit  1,a
2E23: 20 08       jr   nz,$2E2D
2E25: 3E 01       ld   a,$01
2E27: FD 86 01    add  a,(iy+$01)
2E2A: FD 77 01    ld   (iy+$01),a
2E2D: 3A 67 84    ld   a,($8467)
2E30: C6 08       add  a,$08
2E32: BB          cp   e
2E33: 30 04       jr   nc,$2E39
2E35: 5F          ld   e,a
2E36: FD 77 01    ld   (iy+$01),a
2E39: 3A 73 84    ld   a,($8473)
2E3C: D6 08       sub  $08
2E3E: BD          cp   l
2E3F: 30 0C       jr   nc,$2E4D
2E41: 6F          ld   l,a
2E42: FD 36 02 00 ld   (iy+$02),$00
2E46: FD 77 03    ld   (iy+$03),a
2E49: AF          xor  a
2E4A: 32 51 84    ld   ($8451),a
2E4D: 7B          ld   a,e
2E4E: D6 02       sub  $02
2E50: 32 B8 83    ld   ($83B8),a
2E53: D6 06       sub  $06
2E55: 32 5C 83    ld   ($835C),a
2E58: C6 10       add  a,$10
2E5A: 32 60 83    ld   ($8360),a
2E5D: C6 10       add  a,$10
2E5F: 32 64 83    ld   ($8364),a
2E62: 7D          ld   a,l
2E63: C6 02       add  a,$02
2E65: 32 BA 83    ld   ($83BA),a
2E68: C6 06       add  a,$06
2E6A: 32 62 83    ld   ($8362),a
2E6D: 32 66 83    ld   ($8366),a
2E70: 47          ld   b,a
2E71: 3A 5B 83    ld   a,($835B)
2E74: E6 20       and  $20
2E76: 3E 08       ld   a,$08
2E78: 20 01       jr   nz,$2E7B
2E7A: AF          xor  a
2E7B: 80          add  a,b
2E7C: 32 5E 83    ld   ($835E),a
2E7F: AF          xor  a
2E80: 32 B7 83    ld   ($83B7),a
2E83: 32 B9 83    ld   ($83B9),a
2E86: AF          xor  a
2E87: 18 01       jr   $2E8A
2E89: 37          scf
2E8A: 08          ex   af,af'
2E8B: 07          rlca
2E8C: 01 90 5F    ld   bc,$5F90
2E8F: 81          add  a,c
2E90: 4F          ld   c,a
2E91: 3E 00       ld   a,$00
2E93: 88          adc  a,b
2E94: 47          ld   b,a
2E95: 08          ex   af,af'
2E96: 30 0B       jr   nc,$2EA3
2E98: 0A          ld   a,(bc)
2E99: FD 77 62    ld   (iy+$62),a
2E9C: 03          inc  bc
2E9D: 0A          ld   a,(bc)
2E9E: FD 77 63    ld   (iy+$63),a
2EA1: 18 0F       jr   $2EB2
2EA3: 0A          ld   a,(bc)
2EA4: FD 77 62    ld   (iy+$62),a
2EA7: 32 19 84    ld   ($8419),a
2EAA: 03          inc  bc
2EAB: 0A          ld   a,(bc)
2EAC: FD 77 63    ld   (iy+$63),a
2EAF: 32 1A 84    ld   ($841A),a
2EB2: C1          pop  bc
2EB3: DD 23       inc  ix
2EB5: 11 04 00    ld   de,$0004
2EB8: FD 19       add  iy,de
2EBA: 05          dec  b
2EBB: C2 6A 2D    jp   nz,$2D6A
2EBE: 3E 01       ld   a,$01
2EC0: F7          rst  $30
2EC1: C3 7B 2B    jp   $2B7B

3000: C3 33 30    jp   $3033
3003: C3 BA 33    jp   $33BA
3006: C3 47 31    jp   $3147
3009: C3 12 33    jp   $3312
300C: C3 4B 34    jp   $344B
300F: C3 6A 31    jp   $316A
3012: C3 01 34    jp   $3401
3015: C3 2B 38    jp   $382B
3018: C3 F6 39    jp   $39F6
301B: C3 AB 39    jp   $39AB
301E: C3 05 58    jp   $5805
3021: C3 63 39    jp   $3963
3024: 00          nop
3025: 00          nop
3026: 00          nop
3027: 00          nop
3028: 00          nop
3029: 00          nop
302A: 00          nop
302B: 00          nop
302C: 00          nop
302D: 00          nop
302E: 00          nop
302F: 00          nop
3030: C3 70 58    jp   $5870
3033: 3E 01       ld   a,$01
3035: F7          rst  $30
3036: F5          push af
3037: C5          push bc
3038: CD 96 30    call $3096
303B: C1          pop  bc
303C: F1          pop  af
303D: 28 10       jr   z,$304F
303F: 3A 56 81    ld   a,($8156)
3042: A7          and  a
3043: 28 05       jr   z,$304A
3045: 2A E9 81    ld   hl,($81E9)
3048: 18 20       jr   $306A
304A: 2A EB 81    ld   hl,($81EB)
304D: 18 1B       jr   $306A
304F: 0D          dec  c
3050: 28 0B       jr   z,$305D
3052: 0D          dec  c
3053: 28 0D       jr   z,$3062
3055: 0D          dec  c
3056: 28 0F       jr   z,$3067
3058: 21 20 71    ld   hl,$7120
305B: 18 0D       jr   $306A
305D: 21 A0 6F    ld   hl,$6FA0
3060: 18 08       jr   $306A
3062: 21 20 70    ld   hl,$7020
3065: 18 03       jr   $306A
3067: 21 A0 70    ld   hl,$70A0
306A: 22 CB 84    ld   ($84CB),hl
306D: 22 C9 84    ld   ($84C9),hl
3070: 06 00       ld   b,$00
3072: CD D8 02    call $02D8
3075: 01 00 00    ld   bc,$0000
3078: 3E 04       ld   a,$04
307A: 32 5A 83    ld   ($835A),a
307D: 21 D0 6B    ld   hl,$6BD0
3080: 11 E0 6B    ld   de,$6BE0
3083: CD DB 02    call $02DB
3086: 3E 0B       ld   a,$0B
3088: 32 00 D3    ld   ($D300),a
308B: 3E FF       ld   a,$FF
308D: 32 A0 84    ld   ($84A0),a
3090: 3E 30       ld   a,$30
3092: CF          rst  $08
3093: 3E 28       ld   a,$28
3095: D7          rst  $10
3096: C5          push bc
3097: 21 90 84    ld   hl,$8490
309A: 36 00       ld   (hl),$00
309C: 11 91 84    ld   de,$8491
309F: 01 EE 00    ld   bc,$00EE
30A2: ED B0       ldir
30A4: 21 38 31    ld   hl,$3138
30A7: 11 62 85    ld   de,$8562
30AA: 01 0F 00    ld   bc,$000F
30AD: ED B0       ldir
30AF: 21 5B 83    ld   hl,$835B
30B2: 36 00       ld   (hl),$00
30B4: 11 5C 83    ld   de,$835C
30B7: 01 5F 00    ld   bc,$005F
30BA: ED B0       ldir
30BC: C1          pop  bc
30BD: 0D          dec  c
30BE: 28 0B       jr   z,$30CB
30C0: 0D          dec  c
30C1: 28 0D       jr   z,$30D0
30C3: 0D          dec  c
30C4: 28 0F       jr   z,$30D5
30C6: 21 60 68    ld   hl,$6860
30C9: 18 0D       jr   $30D8
30CB: 21 00 68    ld   hl,$6800
30CE: 18 08       jr   $30D8
30D0: 21 20 68    ld   hl,$6820
30D3: 18 03       jr   $30D8
30D5: 21 40 68    ld   hl,$6840
30D8: 11 A9 84    ld   de,$84A9
30DB: 01 1C 00    ld   bc,$001C
30DE: ED B0       ldir
30E0: 3E 38       ld   a,$38
30E2: 32 D6 83    ld   ($83D6),a
30E5: 32 DE 83    ld   ($83DE),a
30E8: 32 E6 83    ld   ($83E6),a
30EB: 3E 39       ld   a,$39
30ED: 32 DA 83    ld   ($83DA),a
30F0: 32 E2 83    ld   ($83E2),a
30F3: 32 EA 83    ld   ($83EA),a
30F6: 3E 00       ld   a,$00
30F8: 32 C5 83    ld   ($83C5),a
30FB: 32 C9 83    ld   ($83C9),a
30FE: 32 CD 83    ld   ($83CD),a
3101: 32 D1 83    ld   ($83D1),a
3104: 21 89 3A    ld   hl,$3A89
3107: 22 90 84    ld   ($8490),hl
310A: 3E FE       ld   a,$FE
310C: 32 93 84    ld   ($8493),a
310F: 21 6C 02    ld   hl,save_registers_and_jump_026c
3112: 22 71 85    ld   ($8571),hl
3115: 3E 04       ld   a,$04
3117: 32 94 84    ld   ($8494),a
311A: 3E C3       ld   a,$C3
311C: 32 96 84    ld   ($8496),a
311F: 32 99 84    ld   ($8499),a
3122: 32 9C 84    ld   ($849C),a
3125: 21 15 36    ld   hl,$3615
3128: 22 97 84    ld   ($8497),hl
312B: 21 49 37    ld   hl,$3749
312E: 22 9A 84    ld   ($849A),hl
3131: 21 1E 35    ld   hl,$351E
3134: 22 9D 84    ld   ($849D),hl
3137: C9          ret
3138: 00          nop
3139: 00          nop
313A: 06 00       ld   b,$00
313C: 00          nop
313D: 00          nop
313E: FF          rst  $38
313F: 00          nop
3140: 00          nop
3141: C6 02       add  a,$02
3143: 14          inc  d
3144: 00          nop
3145: 00          nop
3146: 00          nop
3147: 3E 01       ld   a,$01
3149: F7          rst  $30
314A: 3E 04       ld   a,$04
314C: CF          rst  $08
314D: 3E 34       ld   a,$34
314F: CF          rst  $08
3150: 3E 33       ld   a,$33
3152: CF          rst  $08
3153: 3E 05       ld   a,$05
3155: CF          rst  $08
3156: 3E 31       ld   a,$31
3158: CF          rst  $08
3159: 3E 32       ld   a,$32
315B: CF          rst  $08
315C: 3E 35       ld   a,$35
315E: CF          rst  $08
315F: 3E 4A       ld   a,$4A
3161: CF          rst  $08
3162: 06 F0       ld   b,$F0
3164: CD D8 02    call $02D8
3167: 3E 30       ld   a,$30
3169: D7          rst  $10
316A: 3E 01       ld   a,$01
316C: F7          rst  $30
316D: CD DB 32    call $32DB
3170: CD 19 37    call $3719
3173: CD 53 37    call $3753
3176: CD E4 31    call $31E4
3179: CD 7E 31    call $317E
317C: 18 EC       jr   $316A
317E: 06 00       ld   b,$00
3180: 3A A6 84    ld   a,($84A6)
3183: 11 67 85    ld   de,$8567
3186: CD B2 36    call $36B2
3189: 3A 66 85    ld   a,($8566)
318C: 38 06       jr   c,$3194
318E: 3C          inc  a
318F: E6 03       and  $03
3191: 32 66 85    ld   ($8566),a
3194: 47          ld   b,a
3195: 3A 64 85    ld   a,($8564)
3198: CB 47       bit  0,a
319A: 28 04       jr   z,$31A0
319C: 3E 2C       ld   a,$2C
319E: 18 0E       jr   $31AE
31A0: CB 4F       bit  1,a
31A2: 28 04       jr   z,$31A8
31A4: 3E 2A       ld   a,$2A
31A6: 18 06       jr   $31AE
31A8: 0E 20       ld   c,$20
31AA: 78          ld   a,b
31AB: CB 27       sla  a
31AD: 81          add  a,c
31AE: 3C          inc  a
31AF: 2E 00       ld   l,$00
31B1: CB 95       res  2,l
31B3: 26 01       ld   h,$01
31B5: E5          push hl
31B6: 25          dec  h
31B7: ED 5B 6B 85 ld   de,($856B)
31BB: ED 4B 6D 85 ld   bc,($856D)
31BF: CD 5E 36    call $365E
31C2: 3D          dec  a
31C3: 08          ex   af,af'
31C4: 3A 64 85    ld   a,($8564)
31C7: CB 4F       bit  1,a
31C9: 20 0A       jr   nz,$31D5
31CB: 08          ex   af,af'
31CC: 21 10 00    ld   hl,$0010
31CF: 09          add  hl,bc
31D0: 44          ld   b,h
31D1: 4D          ld   c,l
31D2: E1          pop  hl
31D3: 18 0B       jr   $31E0
31D5: 08          ex   af,af'
31D6: EB          ex   de,hl
31D7: 11 10 00    ld   de,$0010
31DA: 37          scf
31DB: 3F          ccf
31DC: ED 52       sbc  hl,de
31DE: EB          ex   de,hl
31DF: E1          pop  hl
31E0: CD 5E 36    call $365E
31E3: C9          ret
31E4: 3A 64 85    ld   a,($8564)
31E7: CB 47       bit  0,a
31E9: 20 15       jr   nz,$3200
31EB: CB 6F       bit  5,a
31ED: 20 1D       jr   nz,$320C
31EF: CB 77       bit  6,a
31F1: 20 1D       jr   nz,$3210
31F3: CB 57       bit  2,a
31F5: 20 1D       jr   nz,$3214
31F7: CB 4F       bit  1,a
31F9: 20 01       jr   nz,$31FC
31FB: C9          ret
31FC: 1E 00       ld   e,$00
31FE: 18 36       jr   $3236
3200: CB 6F       bit  5,a
3202: 20 14       jr   nz,$3218
3204: CB 77       bit  6,a
3206: 20 14       jr   nz,$321C
3208: 0E 00       ld   c,$00
320A: 18 12       jr   $321E
320C: 0E 02       ld   c,$02
320E: 18 0E       jr   $321E
3210: 0E 04       ld   c,$04
3212: 18 0A       jr   $321E
3214: 0E 06       ld   c,$06
3216: 18 06       jr   $321E
3218: 0E 08       ld   c,$08
321A: 18 02       jr   $321E
321C: 0E 0A       ld   c,$0A
321E: 06 00       ld   b,$00
3220: 21 B9 84    ld   hl,$84B9
3223: 09          add  hl,bc
3224: 11 63 85    ld   de,$8563
3227: 4E          ld   c,(hl)
3228: EB          ex   de,hl
3229: 7E          ld   a,(hl)
322A: B9          cp   c
322B: 30 04       jr   nc,$3231
322D: 3C          inc  a
322E: 77          ld   (hl),a
322F: 18 13       jr   $3244
3231: AF          xor  a
3232: 77          ld   (hl),a
3233: EB          ex   de,hl
3234: 23          inc  hl
3235: 5E          ld   e,(hl)
3236: 16 00       ld   d,$00
3238: 2A 6B 85    ld   hl,($856B)
323B: CD A5 36    call $36A5
323E: CD 7E 32    call $327E
3241: 22 6B 85    ld   ($856B),hl
3244: CD 9E 32    call $329E
3247: 3A 6B 85    ld   a,($856B)
324A: D6 1C       sub  $1C
324C: 47          ld   b,a
324D: E6 F0       and  $F0
324F: 0F          rrca
3250: 0F          rrca
3251: 0F          rrca
3252: 4F          ld   c,a
3253: 0F          rrca
3254: 5F          ld   e,a
3255: 81          add  a,c
3256: 57          ld   d,a
3257: 78          ld   a,b
3258: E6 0F       and  $0F
325A: FE 06       cp   $06
325C: 30 01       jr   nc,$325F
325E: 15          dec  d
325F: FE 0B       cp   $0B
3261: 30 01       jr   nc,$3264
3263: 15          dec  d
3264: 3E 30       ld   a,$30
3266: 92          sub  d
3267: 4F          ld   c,a
3268: 06 00       ld   b,$00
326A: 2A 6F 85    ld   hl,($856F)
326D: 09          add  hl,bc
326E: 22 6D 85    ld   ($856D),hl
3271: 3E 0C       ld   a,$0C
3273: 93          sub  e
3274: FE C0       cp   $C0
3276: 20 01       jr   nz,$3279
3278: AF          xor  a
3279: 3C          inc  a
327A: 32 A7 84    ld   ($84A7),a
327D: C9          ret

327E: E5          push hl
327F: E5          push hl
3280: ED 4B 71 85 ld   bc,($8571)
3284: B7          or   a
3285: ED 42       sbc  hl,bc
3287: 38 0A       jr   c,$3293
3289: C1          pop  bc
328A: 21 DC 02    ld   hl,$02DC
328D: ED 42       sbc  hl,bc
328F: 38 08       jr   c,$3299
3291: E1          pop  hl
3292: C9          ret
3293: E1          pop  hl
3294: E1          pop  hl
3295: 2A 71 85    ld   hl,($8571)
3298: C9          ret
3299: E1          pop  hl
329A: 21 DC 02    ld   hl,$02DC
329D: C9          ret
329E: 3A 64 85    ld   a,($8564)
32A1: CB 47       bit  0,a
32A3: C8          ret  z
32A4: 3A 62 85    ld   a,($8562)
32A7: CD E2 36    call $36E2
32AA: C8          ret  z
32AB: 2A 69 85    ld   hl,($8569)
32AE: 5E          ld   e,(hl)
32AF: 23          inc  hl
32B0: 56          ld   d,(hl)
32B1: 23          inc  hl
32B2: 22 69 85    ld   ($8569),hl
32B5: 7A          ld   a,d
32B6: 16 00       ld   d,$00
32B8: FE FF       cp   $FF
32BA: 28 19       jr   z,$32D5
32BC: 2A 6B 85    ld   hl,($856B)
32BF: CD A5 36    call $36A5
32C2: CD 7E 32    call $327E
32C5: 22 6B 85    ld   ($856B),hl
32C8: 5F          ld   e,a
32C9: 16 00       ld   d,$00
32CB: 2A 6F 85    ld   hl,($856F)
32CE: CD A5 36    call $36A5
32D1: 22 6F 85    ld   ($856F),hl
32D4: C9          ret
32D5: 21 64 85    ld   hl,$8564
32D8: CB 86       res  0,(hl)
32DA: C9          ret
32DB: 3A A7 84    ld   a,($84A7)
32DE: 47          ld   b,a
32DF: 3A 64 85    ld   a,($8564)
32E2: CB 4F       bit  1,a
32E4: 28 0D       jr   z,$32F3
32E6: 3E 01       ld   a,$01
32E8: 32 73 85    ld   ($8573),a
32EB: 3E FF       ld   a,$FF
32ED: 32 65 85    ld   ($8565),a
32F0: 3C          inc  a
32F1: 18 1B       jr   $330E
32F3: 3A 65 85    ld   a,($8565)
32F6: B7          or   a
32F7: 28 14       jr   z,$330D
32F9: 3A A6 84    ld   a,($84A6)
32FC: B8          cp   b
32FD: 30 0A       jr   nc,$3309
32FF: 21 73 85    ld   hl,$8573
3302: 35          dec  (hl)
3303: C0          ret  nz
3304: 36 10       ld   (hl),$10
3306: 3C          inc  a
3307: 18 05       jr   $330E
3309: AF          xor  a
330A: 32 65 85    ld   ($8565),a
330D: 78          ld   a,b
330E: 32 A6 84    ld   ($84A6),a
3311: C9          ret
3312: 3E 01       ld   a,$01
3314: F7          rst  $30
3315: 3A D8 81    ld   a,($81D8)
3318: 4F          ld   c,a
3319: 3A 64 85    ld   a,($8564)
331C: 47          ld   b,a
331D: 5F          ld   e,a
331E: 3A 68 85    ld   a,($8568)
3321: 57          ld   d,a
3322: 78          ld   a,b
3323: E6 1B       and  $1B
3325: FE 00       cp   $00
3327: 20 40       jr   nz,$3369
3329: 79          ld   a,c
332A: E6 14       and  $14
332C: FE 04       cp   $04
332E: 20 39       jr   nz,$3369
3330: CB 62       bit  4,d
3332: 28 35       jr   z,$3369
3334: CB C3       set  0,e
3336: CB 59       bit  3,c
3338: 28 17       jr   z,$3351
333A: CB 49       bit  1,c
333C: 20 05       jr   nz,$3343
333E: 21 E0 69    ld   hl,$69E0
3341: 18 23       jr   $3366
3343: CB 41       bit  0,c
3345: 20 05       jr   nz,$334C
3347: 21 40 6A    ld   hl,$6A40
334A: 18 1A       jr   $3366
334C: 21 80 69    ld   hl,$6980
334F: 18 15       jr   $3366
3351: CB 49       bit  1,c
3353: 20 05       jr   nz,$335A
3355: 21 10 6A    ld   hl,$6A10
3358: 18 0C       jr   $3366
335A: CB 41       bit  0,c
335C: 20 05       jr   nz,$3363
335E: 21 70 6A    ld   hl,$6A70
3361: 18 03       jr   $3366
3363: 21 B0 69    ld   hl,$69B0
3366: 22 69 85    ld   ($8569),hl
3369: 78          ld   a,b
336A: E6 19       and  $19
336C: FE 00       cp   $00
336E: 20 0B       jr   nz,$337B
3370: 79          ld   a,c
3371: E6 04       and  $04
3373: FE 00       cp   $00
3375: 20 04       jr   nz,$337B
3377: CB CB       set  1,e
3379: 18 02       jr   $337D
337B: CB 8B       res  1,e
337D: 78          ld   a,b
337E: E6 02       and  $02
3380: FE 00       cp   $00
3382: 20 1A       jr   nz,$339E
3384: 79          ld   a,c
3385: E6 02       and  $02
3387: FE 00       cp   $00
3389: 20 06       jr   nz,$3391
338B: CB EB       set  5,e
338D: CB B3       res  6,e
338F: 18 11       jr   $33A2
3391: 79          ld   a,c
3392: E6 01       and  $01
3394: FE 00       cp   $00
3396: 20 06       jr   nz,$339E
3398: CB AB       res  5,e
339A: CB F3       set  6,e
339C: 18 04       jr   $33A2
339E: CB AB       res  5,e
33A0: CB B3       res  6,e
33A2: 7B          ld   a,e
33A3: E6 63       and  $63
33A5: FE 00       cp   $00
33A7: 28 04       jr   z,$33AD
33A9: CB 93       res  2,e
33AB: 18 02       jr   $33AF
33AD: CB D3       set  2,e
33AF: 79          ld   a,c
33B0: 32 68 85    ld   ($8568),a
33B3: 7B          ld   a,e
33B4: 32 64 85    ld   ($8564),a
33B7: C3 12 33    jp   $3312
33BA: 3E 30       ld   a,$30
33BC: F7          rst  $30
33BD: 3A 9F 84    ld   a,($849F)
33C0: 6F          ld   l,a
33C1: 26 00       ld   h,$00
33C3: 29          add  hl,hl
33C4: 29          add  hl,hl
33C5: EB          ex   de,hl
33C6: 2A C9 84    ld   hl,($84C9)
33C9: 19          add  hl,de
33CA: 3A 56 81    ld   a,($8156)
33CD: A7          and  a
33CE: 28 05       jr   z,$33D5
33D0: 22 E9 81    ld   ($81E9),hl
33D3: 18 03       jr   $33D8
33D5: 22 EB 81    ld   ($81EB),hl
33D8: 3A A8 84    ld   a,($84A8)
33DB: 3C          inc  a
33DC: 28 11       jr   z,$33EF
33DE: 3E FF       ld   a,$FF
33E0: 32 5A 83    ld   ($835A),a
33E3: 3E 00       ld   a,$00
33E5: 32 34 84    ld   ($8434),a
33E8: 3E 00       ld   a,$00
33EA: EF          rst  $28
33EB: D9          exx
33EC: 79          ld   a,c
33ED: D9          exx
33EE: D7          rst  $10
33EF: 3E FF       ld   a,$FF
33F1: 32 5A 83    ld   ($835A),a
33F4: 3E FF       ld   a,$FF
33F6: 32 34 84    ld   ($8434),a
33F9: 3E 00       ld   a,$00
33FB: EF          rst  $28
33FC: D9          exx
33FD: 79          ld   a,c
33FE: D9          exx
33FF: D7          rst  $10
3400: C9          ret
3401: 3E 01       ld   a,$01
3403: F7          rst  $30
3404: CD 99 84    call $8499
3407: CD 77 37    call $3777
340A: CD 0F 34    call $340F
340D: 18 F2       jr   $3401
340F: 3E FF       ld   a,$FF
3411: 32 1D 84    ld   ($841D),a
3414: 3A 93 84    ld   a,($8493)
3417: 57          ld   d,a
3418: 3A FB 82    ld   a,($82FB)
341B: 47          ld   b,a
341C: E6 F0       and  $F0
341E: 0F          rrca
341F: 0F          rrca
3420: 0F          rrca
3421: 0F          rrca
3422: 4F          ld   c,a
3423: 78          ld   a,b
3424: E6 0F       and  $0F
3426: FE 05       cp   $05
3428: 38 06       jr   c,$3430
342A: 14          inc  d
342B: FE 0A       cp   $0A
342D: 38 01       jr   c,$3430
342F: 14          inc  d
3430: 7A          ld   a,d
3431: 06 10       ld   b,$10
3433: 59          ld   e,c
3434: 16 00       ld   d,$00
3436: CB 23       sla  e
3438: 21 95 81    ld   hl,$8195
343B: 19          add  hl,de
343C: 77          ld   (hl),a
343D: 23          inc  hl
343E: 77          ld   (hl),a
343F: 57          ld   d,a
3440: 79          ld   a,c
3441: 3C          inc  a
3442: E6 0F       and  $0F
3444: 4F          ld   c,a
3445: 7A          ld   a,d
3446: D6 03       sub  $03
3448: 10 E9       djnz $3433
344A: C9          ret
344B: 3E 01       ld   a,$01
344D: F7          rst  $30
344E: CD 56 34    call $3456
3451: CD 9B 37    call $379B
3454: 18 F5       jr   $344B
3456: 3A D4 84    ld   a,($84D4)
3459: B7          or   a
345A: 28 11       jr   z,$346D
345C: 06 08       ld   b,$08
345E: 21 47 85    ld   hl,$8547
3461: 7E          ld   a,(hl)
3462: B7          or   a
3463: 20 70       jr   nz,$34D5
3465: 23          inc  hl
3466: 23          inc  hl
3467: 23          inc  hl
3468: 10 F7       djnz $3461
346A: 3E 36       ld   a,$36
346C: CF          rst  $08
346D: 3A D3 84    ld   a,($84D3)
3470: 3C          inc  a
3471: 28 2E       jr   z,$34A1
3473: 2A CB 84    ld   hl,($84CB)
3476: 7E          ld   a,(hl)
3477: B7          or   a
3478: 20 06       jr   nz,$3480
347A: 3D          dec  a
347B: 32 D4 84    ld   ($84D4),a
347E: 18 55       jr   $34D5
3480: 6F          ld   l,a
3481: 3A A0 84    ld   a,($84A0)
3484: 3C          inc  a
3485: 20 06       jr   nz,$348D
3487: 2E 01       ld   l,$01
3489: AF          xor  a
348A: 32 A0 84    ld   ($84A0),a
348D: 26 00       ld   h,$00
348F: 29          add  hl,hl
3490: 29          add  hl,hl
3491: 29          add  hl,hl
3492: ED 4B A2 84 ld   bc,($84A2)
3496: 09          add  hl,bc
3497: 22 CD 84    ld   ($84CD),hl
349A: 3E FF       ld   a,$FF
349C: 32 D3 84    ld   ($84D3),a
349F: 18 34       jr   $34D5
34A1: 2A CD 84    ld   hl,($84CD)
34A4: ED 4B A2 84 ld   bc,($84A2)
34A8: A7          and  a
34A9: ED 42       sbc  hl,bc
34AB: 30 28       jr   nc,$34D5
34AD: 06 08       ld   b,$08
34AF: 21 47 85    ld   hl,$8547
34B2: 7E          ld   a,(hl)
34B3: B7          or   a
34B4: 28 07       jr   z,$34BD
34B6: 23          inc  hl
34B7: 23          inc  hl
34B8: 23          inc  hl
34B9: 10 F7       djnz $34B2
34BB: 18 18       jr   $34D5
34BD: EB          ex   de,hl
34BE: 2A CB 84    ld   hl,($84CB)
34C1: 23          inc  hl
34C2: 46          ld   b,(hl)
34C3: 23          inc  hl
34C4: 7E          ld   a,(hl)
34C5: 23          inc  hl
34C6: 4E          ld   c,(hl)
34C7: 23          inc  hl
34C8: 22 CB 84    ld   ($84CB),hl
34CB: EB          ex   de,hl
34CC: 77          ld   (hl),a
34CD: 23          inc  hl
34CE: 71          ld   (hl),c
34CF: 23          inc  hl
34D0: 70          ld   (hl),b
34D1: AF          xor  a
34D2: 32 D3 84    ld   ($84D3),a
34D5: 06 08       ld   b,$08
34D7: 21 E4 84    ld   hl,$84E4
34DA: E5          push hl
34DB: 78          ld   a,b
34DC: 21 44 85    ld   hl,$8544
34DF: CD 4F 36    call $364F
34E2: 5E          ld   e,(hl)
34E3: 7B          ld   a,e
34E4: A7          and  a
34E5: CA 32 35    jp   z,$3532
34E8: 23          inc  hl
34E9: 56          ld   d,(hl)
34EA: 23          inc  hl
34EB: 7E          ld   a,(hl)
34EC: 32 DA 84    ld   ($84DA),a
34EF: 21 D6 84    ld   hl,$84D6
34F2: 78          ld   a,b
34F3: C6 0D       add  a,$0D
34F5: 77          ld   (hl),a
34F6: 23          inc  hl
34F7: 73          ld   (hl),e
34F8: 7A          ld   a,d
34F9: FE 07       cp   $07
34FB: 38 02       jr   c,$34FF
34FD: 3E 07       ld   a,$07
34FF: 23          inc  hl
3500: 77          ld   (hl),a
3501: D1          pop  de
3502: D5          push de
3503: EB          ex   de,hl
3504: 7E          ld   a,(hl)
3505: CB 47       bit  0,a
3507: CA 89 35    jp   z,$3589
350A: 1A          ld   a,(de)
350B: CD DC 36    call $36DC
350E: 28 22       jr   z,$3532
3510: C5          push bc
3511: E5          push hl
3512: 13          inc  de
3513: 01 0B 00    ld   bc,$000B
3516: C5          push bc
3517: D5          push de
3518: E5          push hl
3519: ED B0       ldir
351B: CD 3A 35    call $353A
351E: D1          pop  de
351F: E1          pop  hl
3520: C1          pop  bc
3521: ED B0       ldir
3523: D1          pop  de
3524: C1          pop  bc
3525: D5          push de
3526: 78          ld   a,b
3527: 21 44 85    ld   hl,$8544
352A: CD 4F 36    call $364F
352D: 3A D7 84    ld   a,($84D7)
3530: 77          ld   (hl),a
3531: E1          pop  hl
3532: 11 0B 00    ld   de,$000B
3535: E1          pop  hl
3536: 19          add  hl,de
3537: 10 A1       djnz $34DA
3539: C9          ret
353A: 3A D6 84    ld   a,($84D6)
353D: 47          ld   b,a
353E: 21 DF 84    ld   hl,$84DF
3541: 5E          ld   e,(hl)
3542: 23          inc  hl
3543: 56          ld   d,(hl)
3544: 23          inc  hl
3545: 7E          ld   a,(hl)
3546: 23          inc  hl
3547: 4E          ld   c,(hl)
3548: B7          or   a
3549: CC 58 35    call z,$3558
354C: CD D3 35    call $35D3
354F: 3D          dec  a
3550: 71          ld   (hl),c
3551: 2B          dec  hl
3552: 77          ld   (hl),a
3553: 2B          dec  hl
3554: 72          ld   (hl),d
3555: 2B          dec  hl
3556: 73          ld   (hl),e
3557: C9          ret
3558: CD 7A 35    call $357A
355B: 08          ex   af,af'
355C: 79          ld   a,c
355D: 3C          inc  a
355E: 21 E2 84    ld   hl,$84E2
3561: 28 02       jr   z,$3565
3563: 08          ex   af,af'
3564: C9          ret
3565: 2A DB 84    ld   hl,($84DB)
3568: 7E          ld   a,(hl)
3569: 23          inc  hl
356A: 22 DB 84    ld   ($84DB),hl
356D: 21 C0 68    ld   hl,$68C0
3570: CD 41 36    call $3641
3573: CD 7D 35    call $357D
3576: 21 E2 84    ld   hl,$84E2
3579: C9          ret
357A: 2A DD 84    ld   hl,($84DD)
357D: 5E          ld   e,(hl)
357E: 23          inc  hl
357F: 56          ld   d,(hl)
3580: 23          inc  hl
3581: 7E          ld   a,(hl)
3582: 23          inc  hl
3583: 4E          ld   c,(hl)
3584: 23          inc  hl
3585: 22 DD 84    ld   ($84DD),hl
3588: C9          ret
3589: C5          push bc
358A: E5          push hl
358B: 13          inc  de
358C: 01 0B 00    ld   bc,$000B
358F: C5          push bc
3590: D5          push de
3591: E5          push hl
3592: CB C7       set  0,a
3594: EB          ex   de,hl
3595: 77          ld   (hl),a
3596: 3A D7 84    ld   a,($84D7)
3599: 3D          dec  a
359A: 21 80 68    ld   hl,$6880
359D: CD 41 36    call $3641
35A0: 7E          ld   a,(hl)
35A1: 23          inc  hl
35A2: 32 E3 84    ld   ($84E3),a
35A5: 7E          ld   a,(hl)
35A6: 23          inc  hl
35A7: 22 DB 84    ld   ($84DB),hl
35AA: 21 C0 68    ld   hl,$68C0
35AD: CD 41 36    call $3641
35B0: 22 DD 84    ld   ($84DD),hl
35B3: 3A DA 84    ld   a,($84DA)
35B6: 21 FC 68    ld   hl,$68FC
35B9: CD 56 36    call $3656
35BC: 5E          ld   e,(hl)
35BD: 23          inc  hl
35BE: 56          ld   d,(hl)
35BF: 23          inc  hl
35C0: 4E          ld   c,(hl)
35C1: 23          inc  hl
35C2: 46          ld   b,(hl)
35C3: 3E 00       ld   a,$00
35C5: 08          ex   af,af'
35C6: 3A D6 84    ld   a,($84D6)
35C9: CD 96 84    call $8496
35CC: AF          xor  a
35CD: 32 E1 84    ld   ($84E1),a
35D0: C3 9C 84    jp   $849C
35D3: F5          push af
35D4: C5          push bc
35D5: D5          push de
35D6: E5          push hl
35D7: 79          ld   a,c
35D8: 08          ex   af,af'
35D9: F5          push af
35DA: 78          ld   a,b
35DB: 4A          ld   c,d
35DC: 16 00       ld   d,$00
35DE: 42          ld   b,d
35DF: D5          push de
35E0: CD 90 36    call $3690
35E3: 50          ld   d,b
35E4: 59          ld   e,c
35E5: FD E5       push iy
35E7: E1          pop  hl
35E8: CD A5 36    call $36A5
35EB: 44          ld   b,h
35EC: 4D          ld   c,l
35ED: D1          pop  de
35EE: DD E5       push ix
35F0: E1          pop  hl
35F1: CD A5 36    call $36A5
35F4: EB          ex   de,hl
35F5: CB 42       bit  0,d
35F7: 28 05       jr   z,$35FE
35F9: CB 4A       bit  1,d
35FB: C4 08 36    call nz,$3608
35FE: CD 96 84    call $8496
3601: F1          pop  af
3602: 08          ex   af,af'
3603: E1          pop  hl
3604: D1          pop  de
3605: C1          pop  bc
3606: F1          pop  af
3607: C9          ret
3608: F5          push af
3609: E5          push hl
360A: 21 D7 84    ld   hl,$84D7
360D: AF          xor  a
360E: 77          ld   (hl),a
360F: 23          inc  hl
3610: 23          inc  hl
3611: 77          ld   (hl),a
3612: E1          pop  hl
3613: F1          pop  af
3614: C9          ret
3615: E5          push hl
3616: 67          ld   h,a
3617: 08          ex   af,af'
3618: F5          push af
3619: F5          push af
361A: F5          push af
361B: CB 6F       bit  5,a
361D: C4 DE 37    call nz,$37DE
3620: CB 67       bit  4,a
3622: 28 05       jr   z,$3629
3624: 3E FF       ld   a,$FF
3626: 32 92 84    ld   ($8492),a
3629: F1          pop  af
362A: E6 C0       and  $C0
362C: 07          rlca
362D: 07          rlca
362E: CB D7       set  2,a
3630: 6F          ld   l,a
3631: F1          pop  af
3632: E6 0F       and  $0F
3634: E5          push hl
3635: 21 E3 84    ld   hl,$84E3
3638: 86          add  a,(hl)
3639: E1          pop  hl
363A: CD 5E 36    call $365E
363D: F1          pop  af
363E: 08          ex   af,af'
363F: E1          pop  hl
3640: C9          ret
3641: CD 49 36    call $3649
3644: 5E          ld   e,(hl)
3645: 23          inc  hl
3646: 56          ld   d,(hl)
3647: EB          ex   de,hl
3648: C9          ret
3649: 5F          ld   e,a
364A: 16 00       ld   d,$00
364C: 19          add  hl,de
364D: 19          add  hl,de
364E: C9          ret
364F: 5F          ld   e,a
3650: 16 00       ld   d,$00
3652: 19          add  hl,de
3653: 19          add  hl,de
3654: 19          add  hl,de
3655: C9          ret
3656: 5F          ld   e,a
3657: 16 00       ld   d,$00
3659: 19          add  hl,de
365A: 19          add  hl,de
365B: 19          add  hl,de
365C: 19          add  hl,de
365D: C9          ret

365E: 08          ex   af,af'
365F: F5          push af
3660: 7C          ld   a,h
3661: E5          push hl
3662: CD 80 36    call $3680
3665: 72          ld   (hl),d
3666: 23          inc  hl
3667: 73          ld   (hl),e
3668: 23          inc  hl
3669: 70          ld   (hl),b
366A: 23          inc  hl
366B: 71          ld   (hl),c
366C: E1          pop  hl
366D: E5          push hl
366E: D5          push de
366F: E5          push hl
3670: CD 8B 36    call $368B
3673: D1          pop  de
3674: 23          inc  hl
3675: 23          inc  hl
3676: 73          ld   (hl),e
3677: 23          inc  hl
3678: D1          pop  de
3679: 08          ex   af,af'
367A: 77          ld   (hl),a
367B: E1          pop  hl
367C: 08          ex   af,af'
367D: F1          pop  af
367E: 08          ex   af,af'
367F: C9          ret
3680: 21 5B 83    ld   hl,$835B
3683: F5          push af
3684: D5          push de
3685: CD 56 36    call $3656
3688: D1          pop  de
3689: F1          pop  af
368A: C9          ret
368B: 21 BB 83    ld   hl,$83BB
368E: 18 F3       jr   $3683
3690: D5          push de
3691: E5          push hl
3692: CD 80 36    call $3680
3695: 56          ld   d,(hl)
3696: 23          inc  hl
3697: 5E          ld   e,(hl)
3698: D5          push de
3699: DD E1       pop  ix
369B: 23          inc  hl
369C: 56          ld   d,(hl)
369D: 23          inc  hl
369E: 5E          ld   e,(hl)
369F: D5          push de
36A0: FD E1       pop  iy
36A2: E1          pop  hl
36A3: D1          pop  de
36A4: C9          ret
36A5: CB 7B       bit  7,e
36A7: 28 07       jr   z,$36B0
36A9: CB BB       res  7,e
36AB: A7          and  a
36AC: ED 52       sbc  hl,de
36AE: 18 01       jr   $36B1
36B0: 19          add  hl,de
36B1: C9          ret
36B2: B7          or   a
36B3: 28 18       jr   z,$36CD
36B5: 3D          dec  a
36B6: E6 0F       and  $0F
36B8: 80          add  a,b
36B9: 4F          ld   c,a
36BA: 06 00       ld   b,$00
36BC: 21 D0 36    ld   hl,$36D0
36BF: 09          add  hl,bc
36C0: 4E          ld   c,(hl)
36C1: EB          ex   de,hl
36C2: 7E          ld   a,(hl)
36C3: B9          cp   c
36C4: 38 04       jr   c,$36CA
36C6: 3E 00       ld   a,$00
36C8: 77          ld   (hl),a
36C9: C9          ret
36CA: 3C          inc  a
36CB: 77          ld   (hl),a
36CC: C9          ret
36CD: AF          xor  a
36CE: 12          ld   (de),a
36CF: C9          ret
36D0: 0B          dec  bc
36D1: 0B          dec  bc
36D2: 0A          ld   a,(bc)
36D3: 0A          ld   a,(bc)
36D4: 07          rlca
36D5: 07          rlca
36D6: 06 06       ld   b,$06
36D8: 05          dec  b
36D9: 05          dec  b
36DA: 04          inc  b
36DB: 03          inc  bc
36DC: 08          ex   af,af'
36DD: 3A A4 84    ld   a,($84A4)
36E0: 18 04       jr   $36E6
36E2: 08          ex   af,af'
36E3: 3A A5 84    ld   a,($84A5)
36E6: 08          ex   af,af'
36E7: E5          push hl
36E8: C5          push bc
36E9: E6 07       and  $07
36EB: 07          rlca
36EC: 07          rlca
36ED: 4F          ld   c,a
36EE: 06 00       ld   b,$00
36F0: 21 F6 36    ld   hl,$36F6
36F3: 09          add  hl,bc
36F4: 08          ex   af,af'
36F5: E9          jp   (hl)
36F6: CB 47       bit  0,a
36F8: 18 1C       jr   $3716
36FA: CB 4F       bit  1,a
36FC: 18 18       jr   $3716
36FE: CB 57       bit  2,a
3700: 18 14       jr   $3716
3702: CB 5F       bit  3,a
3704: 18 10       jr   $3716
3706: CB 67       bit  4,a
3708: 18 0C       jr   $3716
370A: CB 6F       bit  5,a
370C: 18 08       jr   $3716
370E: CB 77       bit  6,a
3710: 18 04       jr   $3716
3712: CB 7F       bit  7,a
3714: 18 00       jr   $3716
3716: C1          pop  bc
3717: E1          pop  hl
3718: C9          ret
3719: 2A A2 84    ld   hl,($84A2)
371C: 23          inc  hl
371D: 22 A2 84    ld   ($84A2),hl
3720: 11 A4 84    ld   de,$84A4
3723: 7D          ld   a,l
3724: E6 07       and  $07
3726: CD 34 37    call $3734
3729: 13          inc  de
372A: 3A A2 84    ld   a,($84A2)
372D: CB 47       bit  0,a
372F: 28 0D       jr   z,$373E
3731: E6 0E       and  $0E
3733: 0F          rrca
3734: 4F          ld   c,a
3735: 06 00       ld   b,$00
3737: 21 41 37    ld   hl,$3741
373A: 09          add  hl,bc
373B: 7E          ld   a,(hl)
373C: 12          ld   (de),a
373D: C9          ret
373E: AF          xor  a
373F: 18 FB       jr   $373C

3749: 21 66 37    ld   hl,$3766
374C: CD 5D 37    call $375D
374F: 32 45 83    ld   ($8345),a
3752: C9          ret
3753: 21 A9 84    ld   hl,$84A9
3756: CD 5D 37    call $375D
3759: 32 62 85    ld   ($8562),a
375C: C9          ret
375D: 3A A6 84    ld   a,($84A6)
3760: 4F          ld   c,a
3761: 06 00       ld   b,$00
3763: 09          add  hl,bc
3764: 7E          ld   a,(hl)
3765: C9          ret

3777: 3A 92 84    ld   a,($8492)
377A: 3C          inc  a
377B: 20 0D       jr   nz,$378A
377D: 32 92 84    ld   ($8492),a
3780: 3E 84       ld   a,$84
3782: 32 0B D5    ld   ($D50B),a
3785: 21 79 3A    ld   hl,$3A79
3788: 18 03       jr   $378D
378A: 2A 90 84    ld   hl,($8490)
378D: 7E          ld   a,(hl)
378E: B7          or   a
378F: 28 04       jr   z,$3795
3791: 23          inc  hl
3792: 22 90 84    ld   ($8490),hl
3795: C6 FE       add  a,$FE
3797: 32 93 84    ld   ($8493),a
379A: C9          ret
379B: 3A D2 84    ld   a,($84D2)
379E: 47          ld   b,a
379F: 3E FF       ld   a,$FF
37A1: 21 CF 84    ld   hl,$84CF
37A4: CB 40       bit  0,b
37A6: 28 0D       jr   z,$37B5
37A8: 35          dec  (hl)
37A9: 20 0A       jr   nz,$37B5
37AB: 32 74 83    ld   ($8374),a
37AE: 32 78 83    ld   ($8378),a
37B1: CB 80       res  0,b
37B3: CB 98       res  3,b
37B5: 23          inc  hl
37B6: CB 48       bit  1,b
37B8: 28 0D       jr   z,$37C7
37BA: 35          dec  (hl)
37BB: 20 0A       jr   nz,$37C7
37BD: 32 7C 83    ld   ($837C),a
37C0: 32 80 83    ld   ($8380),a
37C3: CB 88       res  1,b
37C5: CB 98       res  3,b
37C7: 23          inc  hl
37C8: CB 50       bit  2,b
37CA: 28 0D       jr   z,$37D9
37CC: 35          dec  (hl)
37CD: 20 0A       jr   nz,$37D9
37CF: 32 84 83    ld   ($8384),a
37D2: 32 88 83    ld   ($8388),a
37D5: CB 90       res  2,b
37D7: CB 98       res  3,b
37D9: 78          ld   a,b
37DA: 32 D2 84    ld   ($84D2),a
37DD: C9          ret
37DE: F5          push af
37DF: D5          push de
37E0: E5          push hl
37E1: CB 42       bit  0,d
37E3: 20 42       jr   nz,$3827
37E5: 3A D2 84    ld   a,($84D2)
37E8: 57          ld   d,a
37E9: 3E 08       ld   a,$08
37EB: CB 42       bit  0,d
37ED: 20 0A       jr   nz,$37F9
37EF: 21 73 83    ld   hl,$8373
37F2: 32 CF 84    ld   ($84CF),a
37F5: CB C2       set  0,d
37F7: 18 1A       jr   $3813
37F9: CB 4A       bit  1,d
37FB: 20 0A       jr   nz,$3807
37FD: 21 7B 83    ld   hl,$837B
3800: 32 D0 84    ld   ($84D0),a
3803: CB CA       set  1,d
3805: 18 0C       jr   $3813
3807: CB 52       bit  2,d
3809: 20 1C       jr   nz,$3827
380B: 21 83 83    ld   hl,$8383
380E: 32 D1 84    ld   ($84D1),a
3811: CB D2       set  2,d
3813: 7B          ld   a,e
3814: D6 0C       sub  $0C
3816: 23          inc  hl
3817: 77          ld   (hl),a
3818: 23          inc  hl
3819: 23          inc  hl
381A: 71          ld   (hl),c
381B: 23          inc  hl
381C: C6 18       add  a,$18
381E: 23          inc  hl
381F: 77          ld   (hl),a
3820: 23          inc  hl
3821: 23          inc  hl
3822: 71          ld   (hl),c
3823: 7A          ld   a,d
3824: 32 D2 84    ld   ($84D2),a
3827: E1          pop  hl
3828: D1          pop  de
3829: F1          pop  af
382A: C9          ret
382B: 3E 01       ld   a,$01
382D: F7          rst  $30
382E: 3E FF       ld   a,$FF
3830: 32 64 83    ld   ($8364),a
3833: 32 68 83    ld   ($8368),a
3836: 32 6C 83    ld   ($836C),a
3839: 32 70 83    ld   ($8370),a
383C: 21 6B 85    ld   hl,$856B
383F: 56          ld   d,(hl)
3840: 23          inc  hl
3841: 23          inc  hl
3842: 3A 64 85    ld   a,($8564)
3845: CB 4F       bit  1,a
3847: 28 03       jr   z,$384C
3849: 5E          ld   e,(hl)
384A: 18 04       jr   $3850
384C: 7E          ld   a,(hl)
384D: C6 10       add  a,$10
384F: 5F          ld   e,a
3850: 21 93 83    ld   hl,$8393
3853: D9          exx
3854: 06 08       ld   b,$08
3856: 21 63 83    ld   hl,$8363
3859: 11 C3 83    ld   de,$83C3
385C: D9          exx
385D: E5          push hl
385E: 7E          ld   a,(hl)
385F: CB 47       bit  0,a
3861: C2 22 39    jp   nz,$3922
3864: 08          ex   af,af'
3865: 23          inc  hl
3866: 46          ld   b,(hl)
3867: 23          inc  hl
3868: 23          inc  hl
3869: 4E          ld   c,(hl)
386A: 3A 64 85    ld   a,($8564)
386D: CB 4F       bit  1,a
386F: 20 1C       jr   nz,$388D
3871: 78          ld   a,b
3872: 92          sub  d
3873: 30 02       jr   nc,$3877
3875: ED 44       neg
3877: FE 0D       cp   $0D
3879: 30 35       jr   nc,$38B0
387B: 79          ld   a,c
387C: 93          sub  e
387D: 30 08       jr   nc,$3887
387F: ED 44       neg
3881: FE 1D       cp   $1D
3883: 30 2B       jr   nc,$38B0
3885: 18 20       jr   $38A7
3887: FE 0D       cp   $0D
3889: 30 25       jr   nc,$38B0
388B: 18 1A       jr   $38A7
388D: 78          ld   a,b
388E: 92          sub  d
388F: 30 08       jr   nc,$3899
3891: ED 44       neg
3893: FE 1D       cp   $1D
3895: 30 19       jr   nc,$38B0
3897: 18 04       jr   $389D
3899: FE 0D       cp   $0D
389B: 30 13       jr   nc,$38B0
389D: 79          ld   a,c
389E: 93          sub  e
389F: 30 02       jr   nc,$38A3
38A1: ED 44       neg
38A3: FE 0D       cp   $0D
38A5: 30 09       jr   nc,$38B0
38A7: 3E BD       ld   a,$BD
38A9: 32 0B D5    ld   ($D50B),a
38AC: E1          pop  hl
38AD: 3E 37       ld   a,$37
38AF: CF          rst  $08
38B0: 08          ex   af,af'
38B1: CB 7F       bit  7,a
38B3: 28 3F       jr   z,$38F4
38B5: CB 77       bit  6,a
38B7: CA 22 39    jp   z,$3922
38BA: 08          ex   af,af'
38BB: 7A          ld   a,d
38BC: C6 28       add  a,$28
38BE: B8          cp   b
38BF: 30 05       jr   nc,$38C6
38C1: 08          ex   af,af'
38C2: CB B7       res  6,a
38C4: 18 5C       jr   $3922
38C6: 08          ex   af,af'
38C7: CB 5F       bit  3,a
38C9: 20 09       jr   nz,$38D4
38CB: CB 67       bit  4,a
38CD: 20 0A       jr   nz,$38D9
38CF: 08          ex   af,af'
38D0: 3E 3C       ld   a,$3C
38D2: 18 08       jr   $38DC
38D4: 08          ex   af,af'
38D5: 3E 3A       ld   a,$3A
38D7: 18 03       jr   $38DC
38D9: 08          ex   af,af'
38DA: 3E 3B       ld   a,$3B
38DC: D9          exx
38DD: EB          ex   de,hl
38DE: 23          inc  hl
38DF: 23          inc  hl
38E0: 23          inc  hl
38E1: 77          ld   (hl),a
38E2: 23          inc  hl
38E3: EB          ex   de,hl
38E4: D9          exx
38E5: 78          ld   a,b
38E6: D9          exx
38E7: 23          inc  hl
38E8: 77          ld   (hl),a
38E9: 23          inc  hl
38EA: D9          exx
38EB: 79          ld   a,c
38EC: D9          exx
38ED: 23          inc  hl
38EE: 77          ld   (hl),a
38EF: 23          inc  hl
38F0: D9          exx
38F1: 08          ex   af,af'
38F2: 18 2E       jr   $3922
38F4: 08          ex   af,af'
38F5: 7A          ld   a,d
38F6: C6 10       add  a,$10
38F8: B8          cp   b
38F9: 30 65       jr   nc,$3960
38FB: 3A 9F 84    ld   a,($849F)
38FE: 3C          inc  a
38FF: 32 9F 84    ld   ($849F),a
3902: 7B          ld   a,e
3903: B9          cp   c
3904: 30 2D       jr   nc,$3933
3906: 3A 64 85    ld   a,($8564)
3909: CB 4F       bit  1,a
390B: 20 40       jr   nz,$394D
390D: 3E AB       ld   a,$AB
390F: 32 0B D5    ld   ($D50B),a
3912: 06 05       ld   b,$05
3914: 3A 74 81    ld   a,($8174)
3917: 80          add  a,b
3918: 32 74 81    ld   ($8174),a
391B: 08          ex   af,af'
391C: CB DF       set  3,a
391E: CB FF       set  7,a
3920: CB F7       set  6,a
3922: E1          pop  hl
3923: 77          ld   (hl),a
3924: 23          inc  hl
3925: 23          inc  hl
3926: 23          inc  hl
3927: 23          inc  hl
3928: D9          exx
3929: 05          dec  b
392A: 78          ld   a,b
392B: B7          or   a
392C: C2 5C 38    jp   nz,$385C
392F: D9          exx
3930: C3 2B 38    jp   $382B
3933: 3A 64 85    ld   a,($8564)
3936: CB 47       bit  0,a
3938: 28 D3       jr   z,$390D
393A: 3E AD       ld   a,$AD
393C: 32 0B D5    ld   ($D50B),a
393F: 06 14       ld   b,$14
3941: 3A 74 81    ld   a,($8174)
3944: 80          add  a,b
3945: 32 74 81    ld   ($8174),a
3948: 08          ex   af,af'
3949: CB EF       set  5,a
394B: 18 D1       jr   $391E
394D: 3E AC       ld   a,$AC
394F: 32 0B D5    ld   ($D50B),a
3952: 06 0A       ld   b,$0A
3954: 3A 74 81    ld   a,($8174)
3957: 80          add  a,b
3958: 32 74 81    ld   ($8174),a
395B: 08          ex   af,af'
395C: CB E7       set  4,a
395E: 18 BE       jr   $391E
3960: 08          ex   af,af'
3961: 18 BF       jr   $3922
3963: 3E 01       ld   a,$01
3965: F7          rst  $30
3966: 3A 94 84    ld   a,($8494)
3969: 47          ld   b,a
396A: 3A 64 85    ld   a,($8564)
396D: 4F          ld   c,a
396E: CB C2       set  0,d
3970: CB 41       bit  0,c
3972: 28 0D       jr   z,$3981
3974: CB 82       res  0,d
3976: CB 40       bit  0,b
3978: 20 07       jr   nz,$3981
397A: 3E 96       ld   a,$96
397C: 32 0B D5    ld   ($D50B),a
397F: 18 22       jr   $39A3
3981: CB 49       bit  1,c
3983: 28 0D       jr   z,$3992
3985: CB 82       res  0,d
3987: CB 48       bit  1,b
3989: 20 07       jr   nz,$3992
398B: 3E 97       ld   a,$97
398D: 32 0B D5    ld   ($D50B),a
3990: 18 11       jr   $39A3
3992: CB 42       bit  0,d
3994: 28 0D       jr   z,$39A3
3996: CB 78       bit  7,b
3998: 20 05       jr   nz,$399F
399A: 3E 95       ld   a,$95
399C: 32 0B D5    ld   ($D50B),a
399F: CB F9       set  7,c
39A1: 18 02       jr   $39A5
39A3: CB B9       res  7,c
39A5: 79          ld   a,c
39A6: 32 94 84    ld   ($8494),a
39A9: 18 B8       jr   $3963
39AB: 3E 31       ld   a,$31
39AD: D7          rst  $10
39AE: 3E 33       ld   a,$33
39B0: D7          rst  $10
39B1: 3E 04       ld   a,$04
39B3: D7          rst  $10
39B4: 3E 34       ld   a,$34
39B6: D7          rst  $10
39B7: 3E 35       ld   a,$35
39B9: D7          rst  $10
39BA: 3E 4A       ld   a,$4A
39BC: D7          rst  $10
39BD: 3E FF       ld   a,$FF
39BF: 32 A8 84    ld   ($84A8),a
39C2: 3E 01       ld   a,$01
39C4: F7          rst  $30
39C5: CD 19 37    call $3719
39C8: 21 64 85    ld   hl,$8564
39CB: CB CE       set  1,(hl)
39CD: CD 7E 31    call $317E
39D0: 3E 30       ld   a,$30
39D2: 32 C2 83    ld   ($83C2),a
39D5: 3C          inc  a
39D6: 32 BE 83    ld   ($83BE),a
39D9: 3A 64 85    ld   a,($8564)
39DC: CB 47       bit  0,a
39DE: 20 0B       jr   nz,$39EB
39E0: 3E 29       ld   a,$29
39E2: CF          rst  $08
39E3: 3E FF       ld   a,$FF
39E5: 32 A4 84    ld   ($84A4),a
39E8: C3 70 58    jp   $5870
39EB: E6 01       and  $01
39ED: 32 64 85    ld   ($8564),a
39F0: CD E4 31    call $31E4
39F3: C3 C2 39    jp   $39C2
39F6: 3E 01       ld   a,$01
39F8: F7          rst  $30
39F9: 3A A8 84    ld   a,($84A8)
39FC: 3C          inc  a
39FD: 20 03       jr   nz,$3A02
39FF: 3E 36       ld   a,$36
3A01: D7          rst  $10
3A02: 3E 31       ld   a,$31
3A04: D7          rst  $10
3A05: 3E 32       ld   a,$32
3A07: D7          rst  $10
3A08: 3E 35       ld   a,$35
3A0A: D7          rst  $10
3A0B: 3E 01       ld   a,$01
3A0D: F7          rst  $30
3A0E: 3E AE       ld   a,$AE
3A10: 32 0B D5    ld   ($D50B),a
3A13: 3E 80       ld   a,$80
3A15: 32 3B 84    ld   ($843B),a
3A18: 21 64 85    ld   hl,$8564
3A1B: CB 8E       res  1,(hl)
3A1D: 21 B9 84    ld   hl,$84B9
3A20: 36 00       ld   (hl),$00
3A22: 11 BA 84    ld   de,$84BA
3A25: 01 07 00    ld   bc,$0007
3A28: ED B0       ldir
3A2A: 21 C0 57    ld   hl,$57C0
3A2D: 22 97 84    ld   ($8497),hl
3A30: 21 FF 57    ld   hl,$57FF
3A33: 22 9A 84    ld   ($849A),hl
3A36: 3E 05       ld   a,$05
3A38: 32 D7 84    ld   ($84D7),a
3A3B: 3E 01       ld   a,$01
3A3D: 32 D8 84    ld   ($84D8),a
3A40: 3E 20       ld   a,$20
3A42: 32 DA 84    ld   ($84DA),a
3A45: AF          xor  a
3A46: 11 D9 84    ld   de,$84D9
3A49: 21 52 3A    ld   hl,$3A52
3A4C: 22 9D 84    ld   ($849D),hl
3A4F: C3 92 35    jp   $3592
3A52: AF          xor  a
3A53: 32 A1 84    ld   ($84A1),a
3A56: 3E 3C       ld   a,$3C
3A58: F7          rst  $30
3A59: 3A D8 84    ld   a,($84D8)
3A5C: CD DC 36    call $36DC
3A5F: CC 3A 35    call z,$353A
3A62: 3A A1 84    ld   a,($84A1)
3A65: 3C          inc  a
3A66: 3E 01       ld   a,$01
3A68: F7          rst  $30
3A69: 20 EE       jr   nz,$3A59
3A6B: 3E FF       ld   a,$FF
3A6D: 32 92 84    ld   ($8492),a
3A70: 3E 49       ld   a,$49
3A72: CF          rst  $08
3A73: 3E 04       ld   a,$04
3A75: D7          rst  $10
3A76: 3E 36       ld   a,$36
3A78: D7          rst  $10

3B00: C3 79 3B    jp   $3B79
3B03: C3 37 3C    jp   $3C37
3B06: C3 94 3E    jp   $3E94
3B09: C3 44 3F    jp   $3F44
3B0C: C3 82 3F    jp   $3F82
3B0F: C3 00 73    jp   $7300
3B12: C3 30 73    jp   $7330
3B15: C3 8D 73    jp   $738D
3B18: C3 B7 74    jp   $74B7
3B1B: C3 75 75    jp   $7575
3B1E: C3 38 75    jp   $7538
3B21: C3 03 76    jp   $7603
3B24: C3 2A 3B    jp   $3B2A
3B27: C3 A0 77    jp   $77A0
3B2A: 3E 01       ld   a,$01
3B2C: F7          rst  $30
3B2D: CD 65 77    call $7765
3B30: 21 00 70    ld   hl,$7000
3B33: 01 00 05    ld   bc,$0500
3B36: 3E 07       ld   a,$07
3B38: CF          rst  $08
3B39: 3E 07       ld   a,$07
3B3B: E7          rst  $20
3B3C: 3E 01       ld   a,$01
3B3E: F7          rst  $30
3B3F: CD 8D 77    call $778D
3B42: 3E 01       ld   a,$01
3B44: F7          rst  $30
3B45: 21 8A C9    ld   hl,$C98A
3B48: 11 00 5B    ld   de,$5B00
3B4B: CD E4 02    call $02E4
3B4E: 3E 69       ld   a,$69
3B50: EF          rst  $28
3B51: 21 AA C6    ld   hl,$C6AA
3B54: 11 90 4F    ld   de,$4F90
3B57: 0E 1E       ld   c,$1E
3B59: CD D5 02    call $02D5
3B5C: 21 8A C9    ld   hl,$C98A
3B5F: 11 56 5B    ld   de,$5B56
3B62: CD E4 02    call $02E4
3B65: 3E B0       ld   a,$B0
3B67: 32 0B D5    ld   ($D50B),a
3B6A: 3E 60       ld   a,$60
3B6C: F7          rst  $30
3B6D: 3E 01       ld   a,$01
3B6F: F7          rst  $30
3B70: 3E 69       ld   a,$69
3B72: EF          rst  $28
3B73: A7          and  a
3B74: 28 F7       jr   z,$3B6D
3B76: 3E 44       ld   a,$44
3B78: D7          rst  $10
3B79: 3E 01       ld   a,$01
3B7B: F7          rst  $30
3B7C: 79          ld   a,c
3B7D: 32 E0 84    ld   ($84E0),a
3B80: F5          push af
3B81: C5          push bc
3B82: 3E 80       ld   a,$80
3B84: 32 5A 83    ld   ($835A),a
3B87: 21 00 C8    ld   hl,$C800
3B8A: 11 80 4D    ld   de,$4D80
3B8D: CD E4 02    call $02E4
3B90: 21 E0 CA    ld   hl,$CAE0
3B93: 11 22 4E    ld   de,$4E22
3B96: CD E4 02    call $02E4
3B99: 21 00 CB    ld   hl,$CB00
3B9C: 36 3B       ld   (hl),$3B
3B9E: 11 01 CB    ld   de,$CB01
3BA1: 01 7F 00    ld   bc,$007F
3BA4: ED B0       ldir
3BA6: 21 A0 C8    ld   hl,$C8A0
3BA9: 11 44 4E    ld   de,$4E44
3BAC: CD E4 02    call $02E4
3BAF: 21 A8 C8    ld   hl,$C8A8
3BB2: 11 D6 4E    ld   de,$4ED6
3BB5: CD E4 02    call $02E4
3BB8: 3E C8       ld   a,$C8
3BBA: 06 0C       ld   b,$0C
3BBC: 21 86 CC    ld   hl,$CC86
3BBF: 11 20 00    ld   de,$0020
3BC2: 77          ld   (hl),a
3BC3: 19          add  hl,de
3BC4: 10 FC       djnz $3BC2
3BC6: 21 E8 4E    ld   hl,$4EE8
3BC9: 11 98 84    ld   de,$8498
3BCC: 01 48 00    ld   bc,$0048
3BCF: ED B0       ldir
3BD1: 21 2F 3E    ld   hl,$3E2F
3BD4: 22 D0 84    ld   ($84D0),hl
3BD7: 22 D2 84    ld   ($84D2),hl
3BDA: 3E 06       ld   a,$06
3BDC: 32 00 D3    ld   ($D300),a
3BDF: 21 B4 1E    ld   hl,$1EB4
3BE2: 22 D8 84    ld   ($84D8),hl
3BE5: 21 30 4F    ld   hl,$4F30
3BE8: 11 BB 83    ld   de,$83BB
3BEB: 01 60 00    ld   bc,$0060
3BEE: 3A 1B 84    ld   a,($841B)
3BF1: 86          add  a,(hl)
3BF2: 12          ld   (de),a
3BF3: 23          inc  hl
3BF4: 13          inc  de
3BF5: 0B          dec  bc
3BF6: 3A 1B 84    ld   a,($841B)
3BF9: 86          add  a,(hl)
3BFA: 12          ld   (de),a
3BFB: 23          inc  hl
3BFC: 13          inc  de
3BFD: 0B          dec  bc
3BFE: ED A0       ldi
3C00: ED A0       ldi
3C02: EA EE 3B    jp   pe,$3BEE
3C05: 06 F0       ld   b,$F0
3C07: CD D8 02    call $02D8
3C0A: 3A E0 84    ld   a,($84E0)
3C0D: FE 03       cp   $03
3C0F: CD 1A 3C    call $3C1A
3C12: D4 33 3C    call nc,$3C33
3C15: C1          pop  bc
3C16: F1          pop  af
3C17: 3E 38       ld   a,$38
3C19: D7          rst  $10
3C1A: 3E 39       ld   a,$39
3C1C: CF          rst  $08
3C1D: 3E 3E       ld   a,$3E
3C1F: CF          rst  $08
3C20: 3E 3B       ld   a,$3B
3C22: CF          rst  $08
3C23: 3E 3C       ld   a,$3C
3C25: CF          rst  $08
3C26: 3E 3D       ld   a,$3D
3C28: CF          rst  $08
3C29: 3E 3A       ld   a,$3A
3C2B: CF          rst  $08
3C2C: 3E 41       ld   a,$41
3C2E: CF          rst  $08
3C2F: 3E 45       ld   a,$45
3C31: CF          rst  $08
3C32: C9          ret
3C33: 3E 43       ld   a,$43
3C35: CF          rst  $08
3C36: C9          ret
3C37: 3E 01       ld   a,$01
3C39: F7          rst  $30
3C3A: 3E FF       ld   a,$FF
3C3C: 32 1E 84    ld   ($841E),a
3C3F: CD 4E 3C    call $3C4E
3C42: CD D8 3C    call $3CD8
3C45: CD F7 3C    call $3CF7
3C48: CD 00 3E    call $3E00
3C4B: C3 37 3C    jp   $3C37
3C4E: 3A 98 84    ld   a,($8498)
3C51: 3D          dec  a
3C52: 32 98 84    ld   ($8498),a
3C55: C0          ret  nz
3C56: 3A A8 84    ld   a,($84A8)
3C59: 32 98 84    ld   ($8498),a
3C5C: CD AA 3C    call $3CAA
3C5F: 3A B8 84    ld   a,($84B8)
3C62: A7          and  a
3C63: FA 73 3C    jp   m,$3C73
3C66: 3A BC 83    ld   a,($83BC)
3C69: 21 C1 84    ld   hl,$84C1
3C6C: BE          cp   (hl)
3C6D: F2 97 3C    jp   p,$3C97
3C70: C3 7D 3C    jp   $3C7D
3C73: 3A BC 83    ld   a,($83BC)
3C76: 21 C0 84    ld   hl,$84C0
3C79: BE          cp   (hl)
3C7A: FA 97 3C    jp   m,$3C97
3C7D: 3A B8 84    ld   a,($84B8)
3C80: 47          ld   b,a
3C81: 3A BB 81    ld   a,($81BB)
3C84: 80          add  a,b
3C85: 32 BB 81    ld   ($81BB),a
3C88: 3A BC 83    ld   a,($83BC)
3C8B: 80          add  a,b
3C8C: 32 BC 83    ld   ($83BC),a
3C8F: 3A C0 83    ld   a,($83C0)
3C92: 80          add  a,b
3C93: 32 C0 83    ld   ($83C0),a
3C96: C9          ret
3C97: 3A B8 84    ld   a,($84B8)
3C9A: ED 44       neg
3C9C: 32 B8 84    ld   ($84B8),a
3C9F: FA 5F 3C    jp   m,$3C5F
3CA2: 3E C1       ld   a,$C1
3CA4: 32 0B D5    ld   ($D50B),a
3CA7: C3 5F 3C    jp   $3C5F
3CAA: 21 9C 84    ld   hl,$849C
3CAD: 7E          ld   a,(hl)
3CAE: 3D          dec  a
3CAF: 77          ld   (hl),a
3CB0: C0          ret  nz
3CB1: 3A AC 84    ld   a,($84AC)
3CB4: 77          ld   (hl),a
3CB5: 3E 5F       ld   a,$5F
3CB7: 21 BC 83    ld   hl,$83BC
3CBA: 01 C8 84    ld   bc,$84C8
3CBD: BE          cp   (hl)
3CBE: F2 C6 3C    jp   p,$3CC6
3CC1: 3E 1C       ld   a,$1C
3CC3: C3 C7 3C    jp   $3CC7
3CC6: 0A          ld   a,(bc)
3CC7: 32 C2 83    ld   ($83C2),a
3CCA: 3C          inc  a
3CCB: 32 BE 83    ld   ($83BE),a
3CCE: 3C          inc  a
3CCF: FE 20       cp   $20
3CD1: C2 D6 3C    jp   nz,$3CD6
3CD4: 3E 1C       ld   a,$1C
3CD6: 02          ld   (bc),a
3CD7: C9          ret
3CD8: 3A 99 84    ld   a,($8499)
3CDB: 3D          dec  a
3CDC: 32 99 84    ld   ($8499),a
3CDF: C0          ret  nz
3CE0: 3A A9 84    ld   a,($84A9)
3CE3: 32 99 84    ld   ($8499),a
3CE6: 3A BF 84    ld   a,($84BF)
3CE9: 47          ld   b,a
3CEA: ED 5F       ld   a,r
3CEC: B8          cp   b
3CED: D0          ret  nc
3CEE: 3A B8 84    ld   a,($84B8)
3CF1: ED 44       neg
3CF3: 32 B8 84    ld   ($84B8),a
3CF6: C9          ret
3CF7: 21 9A 84    ld   hl,$849A
3CFA: 7E          ld   a,(hl)
3CFB: 3D          dec  a
3CFC: 77          ld   (hl),a
3CFD: C2 10 3D    jp   nz,$3D10
3D00: 3A AA 84    ld   a,($84AA)
3D03: 77          ld   (hl),a
3D04: 01 00 00    ld   bc,$0000
3D07: 11 00 00    ld   de,$0000
3D0A: CD 28 3D    call $3D28
3D0D: CD A4 3D    call $3DA4
3D10: 21 9B 84    ld   hl,$849B
3D13: 7E          ld   a,(hl)
3D14: 3D          dec  a
3D15: 77          ld   (hl),a
3D16: C0          ret  nz
3D17: 3A AB 84    ld   a,($84AB)
3D1A: 77          ld   (hl),a
3D1B: 01 00 00    ld   bc,$0000
3D1E: 11 3F 0C    ld   de,$0C3F
3D21: CD 28 3D    call $3D28
3D24: CD D2 3D    call $3DD2
3D27: C9          ret
3D28: CD 73 3D    call $3D73
3D2B: 7E          ld   a,(hl)
3D2C: A7          and  a
3D2D: FA 44 3D    jp   m,$3D44
3D30: CD 7D 3D    call $3D7D
3D33: 46          ld   b,(hl)
3D34: 3A C3 84    ld   a,($84C3)
3D37: 83          add  a,e
3D38: B8          cp   b
3D39: F5          push af
3D3A: CD 73 3D    call $3D73
3D3D: F1          pop  af
3D3E: FA 6C 3D    jp   m,$3D6C
3D41: C3 55 3D    jp   $3D55
3D44: CD 7D 3D    call $3D7D
3D47: 46          ld   b,(hl)
3D48: 3A C2 84    ld   a,($84C2)
3D4B: 83          add  a,e
3D4C: B8          cp   b
3D4D: F5          push af
3D4E: CD 73 3D    call $3D73
3D51: F1          pop  af
3D52: F2 6C 3D    jp   p,$3D6C
3D55: CD 73 3D    call $3D73
3D58: 46          ld   b,(hl)
3D59: CD 7D 3D    call $3D7D
3D5C: 7E          ld   a,(hl)
3D5D: 80          add  a,b
3D5E: 77          ld   (hl),a
3D5F: CD 87 3D    call $3D87
3D62: 7E          ld   a,(hl)
3D63: 80          add  a,b
3D64: 77          ld   (hl),a
3D65: CD 87 3D    call $3D87
3D68: 7E          ld   a,(hl)
3D69: 80          add  a,b
3D6A: 77          ld   (hl),a
3D6B: C9          ret
3D6C: 7E          ld   a,(hl)
3D6D: ED 44       neg
3D6F: 77          ld   (hl),a
3D70: C3 28 3D    jp   $3D28
3D73: 21 B9 84    ld   hl,$84B9
3D76: 7A          ld   a,d
3D77: A7          and  a
3D78: CA 7C 3D    jp   z,$3D7C
3D7B: 23          inc  hl
3D7C: C9          ret
3D7D: 21 C3 83    ld   hl,$83C3
3D80: 7D          ld   a,l
3D81: 82          add  a,d
3D82: 6F          ld   l,a
3D83: 7C          ld   a,h
3D84: 89          adc  a,c
3D85: 67          ld   h,a
3D86: C9          ret
3D87: 23          inc  hl
3D88: 23          inc  hl
3D89: 23          inc  hl
3D8A: 23          inc  hl
3D8B: C9          ret
3D8C: F5          push af
3D8D: 3D          dec  a
3D8E: 77          ld   (hl),a
3D8F: DD 7E 00    ld   a,(ix+$00)
3D92: DD 77 38    ld   (ix+$38),a
3D95: DD 36 39 60 ld   (ix+$39),$60
3D99: F1          pop  af
3D9A: C9          ret
3D9B: DD 36 38 00 ld   (ix+$38),$00
3D9F: DD 36 39 00 ld   (ix+$39),$00
3DA3: C9          ret
3DA4: 21 9D 84    ld   hl,$849D
3DA7: 7E          ld   a,(hl)
3DA8: 3D          dec  a
3DA9: 77          ld   (hl),a
3DAA: C0          ret  nz
3DAB: 3A AD 84    ld   a,($84AD)
3DAE: 77          ld   (hl),a
3DAF: DD 21 C3 83 ld   ix,$83C3
3DB3: 21 A1 84    ld   hl,$84A1
3DB6: 7E          ld   a,(hl)
3DB7: A7          and  a
3DB8: C4 8C 3D    call nz,$3D8C
3DBB: CC 9B 3D    call z,$3D9B
3DBE: 3A C9 84    ld   a,($84C9)
3DC1: FE 27       cp   $27
3DC3: C2 C8 3D    jp   nz,$3DC8
3DC6: 3E 21       ld   a,$21
3DC8: 32 C6 83    ld   ($83C6),a
3DCB: 3C          inc  a
3DCC: 3C          inc  a
3DCD: 3C          inc  a
3DCE: 32 C9 84    ld   ($84C9),a
3DD1: C9          ret
3DD2: 21 9E 84    ld   hl,$849E
3DD5: 7E          ld   a,(hl)
3DD6: 3D          dec  a
3DD7: 77          ld   (hl),a
3DD8: C0          ret  nz
3DD9: 3A AE 84    ld   a,($84AE)
3DDC: 77          ld   (hl),a
3DDD: DD 21 CF 83 ld   ix,$83CF
3DE1: 21 A2 84    ld   hl,$84A2
3DE4: 7E          ld   a,(hl)
3DE5: A7          and  a
3DE6: C4 8C 3D    call nz,$3D8C
3DE9: CC 9B 3D    call z,$3D9B
3DEC: 3A CA 84    ld   a,($84CA)
3DEF: FE 27       cp   $27
3DF1: C2 F6 3D    jp   nz,$3DF6
3DF4: 3E 21       ld   a,$21
3DF6: 32 D2 83    ld   ($83D2),a
3DF9: 3C          inc  a
3DFA: 3C          inc  a
3DFB: 3C          inc  a
3DFC: 32 CA 84    ld   ($84CA),a
3DFF: C9          ret
3E00: FD 21 D0 84 ld   iy,$84D0
3E04: DD 2A D0 84 ld   ix,($84D0)
3E08: 01 9F 84    ld   bc,$849F
3E0B: 11 CB 84    ld   de,$84CB
3E0E: 21 CE 83    ld   hl,$83CE
3E11: CD 29 3E    call $3E29
3E14: FD 21 D2 84 ld   iy,$84D2
3E18: DD 2A D2 84 ld   ix,($84D2)
3E1C: 01 A0 84    ld   bc,$84A0
3E1F: 11 CC 84    ld   de,$84CC
3E22: 21 DA 83    ld   hl,$83DA
3E25: CD 29 3E    call $3E29
3E28: C9          ret
3E29: 0A          ld   a,(bc)
3E2A: 3D          dec  a
3E2B: 02          ld   (bc),a
3E2C: F0          ret  p
3E2D: DD E9       jp   (ix)
3E2F: 3A AF 84    ld   a,($84AF)
3E32: 02          ld   (bc),a
3E33: E5          push hl
3E34: C5          push bc
3E35: 01 A0 84    ld   bc,$84A0
3E38: 21 BB 84    ld   hl,$84BB
3E3B: 0A          ld   a,(bc)
3E3C: 96          sub  (hl)
3E3D: 02          ld   (bc),a
3E3E: C1          pop  bc
3E3F: E1          pop  hl
3E40: CD 7B 3E    call $3E7B
3E43: 21 4F 3E    ld   hl,$3E4F
3E46: FD 75 00    ld   (iy+$00),l
3E49: FD 74 01    ld   (iy+$01),h
3E4C: C3 7A 3E    jp   $3E7A
3E4F: 3E 85       ld   a,$85
3E51: 32 0B D5    ld   ($D50B),a
3E54: 3A B0 84    ld   a,($84B0)
3E57: 02          ld   (bc),a
3E58: CD 7B 3E    call $3E7B
3E5B: 21 67 3E    ld   hl,$3E67
3E5E: FD 75 00    ld   (iy+$00),l
3E61: FD 74 01    ld   (iy+$01),h
3E64: C3 7A 3E    jp   $3E7A
3E67: 3A B2 84    ld   a,($84B2)
3E6A: 02          ld   (bc),a
3E6B: CD 7B 3E    call $3E7B
3E6E: 3E 1F       ld   a,$1F
3E70: 12          ld   (de),a
3E71: 21 2F 3E    ld   hl,$3E2F
3E74: FD 75 00    ld   (iy+$00),l
3E77: FD 74 01    ld   (iy+$01),h
3E7A: C9          ret
3E7B: 1A          ld   a,(de)
3E7C: FE 1F       cp   $1F
3E7E: C2 89 3E    jp   nz,$3E89
3E81: F5          push af
3E82: 3E 3F       ld   a,$3F
3E84: 77          ld   (hl),a
3E85: F1          pop  af
3E86: C3 8A 3E    jp   $3E8A
3E89: 77          ld   (hl),a
3E8A: 3C          inc  a
3E8B: 2B          dec  hl
3E8C: 2B          dec  hl
3E8D: 2B          dec  hl
3E8E: 2B          dec  hl
3E8F: 77          ld   (hl),a
3E90: 3C          inc  a
3E91: 3C          inc  a
3E92: 12          ld   (de),a
3E93: C9          ret
3E94: 3E 01       ld   a,$01
3E96: F7          rst  $30
3E97: DD 21 BB 83 ld   ix,$83BB
3E9B: DD 7E 08    ld   a,(ix+$08)
3E9E: DD 46 20    ld   b,(ix+$20)
3EA1: 90          sub  b
3EA2: F2 A7 3E    jp   p,$3EA7
3EA5: ED 44       neg
3EA7: FE 0D       cp   $0D
3EA9: F2 CA 3E    jp   p,$3ECA
3EAC: DD 7E 13    ld   a,(ix+$13)
3EAF: FE 25       cp   $25
3EB1: CC F9 3E    call z,$3EF9
3EB4: C4 FC 3E    call nz,$3EFC
3EB7: DD 7E 09    ld   a,(ix+$09)
3EBA: DD 46 21    ld   b,(ix+$21)
3EBD: 90          sub  b
3EBE: F2 C3 3E    jp   p,$3EC3
3EC1: ED 44       neg
3EC3: B9          cp   c
3EC4: F2 CA 3E    jp   p,$3ECA
3EC7: C3 02 3F    jp   $3F02
3ECA: DD 7E 14    ld   a,(ix+$14)
3ECD: DD 46 20    ld   b,(ix+$20)
3ED0: 90          sub  b
3ED1: F2 D6 3E    jp   p,$3ED6
3ED4: ED 44       neg
3ED6: FE 0D       cp   $0D
3ED8: F2 FF 3E    jp   p,$3EFF
3EDB: DD 7E 1F    ld   a,(ix+$1f)
3EDE: FE 25       cp   $25
3EE0: CC F9 3E    call z,$3EF9
3EE3: C4 FC 3E    call nz,$3EFC
3EE6: DD 7E 15    ld   a,(ix+$15)
3EE9: DD 46 21    ld   b,(ix+$21)
3EEC: 90          sub  b
3EED: F2 F2 3E    jp   p,$3EF2
3EF0: ED 44       neg
3EF2: B9          cp   c
3EF3: F2 FF 3E    jp   p,$3EFF
3EF6: C3 02 3F    jp   $3F02
3EF9: 0E 28       ld   c,$28
3EFB: C9          ret
3EFC: 0E 1D       ld   c,$1D
3EFE: C9          ret
3EFF: C3 94 3E    jp   $3E94
3F02: 3E AF       ld   a,$AF
3F04: 32 0B D5    ld   ($D50B),a
3F07: 3A D7 84    ld   a,($84D7)
3F0A: CB D7       set  2,a
3F0C: 32 D7 84    ld   ($84D7),a
3F0F: DD 7E 20    ld   a,(ix+$20)
3F12: D6 08       sub  $08
3F14: DD 77 20    ld   (ix+$20),a
3F17: C6 10       add  a,$10
3F19: DD 77 24    ld   (ix+$24),a
3F1C: DD 7E 21    ld   a,(ix+$21)
3F1F: DD 77 25    ld   (ix+$25),a
3F22: DD 36 22 00 ld   (ix+$22),$00
3F26: DD 36 26 00 ld   (ix+$26),$00
3F2A: DD 36 23 35 ld   (ix+$23),$35
3F2E: DD 36 27 36 ld   (ix+$27),$36
3F32: 3A D6 84    ld   a,($84D6)
3F35: A7          and  a
3F36: C2 41 3F    jp   nz,$3F41
3F39: 3E 00       ld   a,$00
3F3B: 32 C6 84    ld   ($84C6),a
3F3E: 3E 40       ld   a,$40
3F40: CF          rst  $08
3F41: 3E 3A       ld   a,$3A
3F43: D7          rst  $10
3F44: 3E 01       ld   a,$01
3F46: F7          rst  $30
3F47: DD 21 BB 83 ld   ix,$83BB
3F4B: DD 46 04    ld   b,(ix+$04)
3F4E: DD 7E 24    ld   a,(ix+$24)
3F51: 90          sub  b
3F52: F2 57 3F    jp   p,$3F57
3F55: ED 44       neg
3F57: FE 0D       cp   $0D
3F59: F2 44 3F    jp   p,$3F44
3F5C: DD 7E 25    ld   a,(ix+$25)
3F5F: DD 46 05    ld   b,(ix+$05)
3F62: 90          sub  b
3F63: F2 68 3F    jp   p,$3F68
3F66: ED 44       neg
3F68: FE 13       cp   $13
3F6A: FA 77 3F    jp   m,$3F77
3F6D: DD 7E 25    ld   a,(ix+$25)
3F70: DD 46 05    ld   b,(ix+$05)
3F73: 90          sub  b
3F74: DA 44 3F    jp   c,$3F44
3F77: 3E FF       ld   a,$FF
3F79: 32 C6 84    ld   ($84C6),a
3F7C: 3E 40       ld   a,$40
3F7E: CF          rst  $08
3F7F: 3E 3B       ld   a,$3B
3F81: D7          rst  $10
3F82: 3E 01       ld   a,$01
3F84: F7          rst  $30
3F85: DD 21 BB 83 ld   ix,$83BB
3F89: DD 7E 20    ld   a,(ix+$20)
3F8C: DD 46 30    ld   b,(ix+$30)
3F8F: 90          sub  b
3F90: F2 95 3F    jp   p,$3F95
3F93: ED 44       neg
3F95: FE 1D       cp   $1D
3F97: F2 82 3F    jp   p,$3F82
3F9A: DD 7E 21    ld   a,(ix+$21)
3F9D: DD 46 35    ld   b,(ix+$35)
3FA0: 90          sub  b
3FA1: F2 A6 3F    jp   p,$3FA6
3FA4: ED 44       neg
3FA6: FE 1E       cp   $1E
3FA8: F2 82 3F    jp   p,$3F82
3FAB: 3A D7 84    ld   a,($84D7)
3FAE: CB CF       set  1,a
3FB0: 32 D7 84    ld   ($84D7),a
3FB3: DD 7E 20    ld   a,(ix+$20)
3FB6: D6 08       sub  $08
3FB8: DD 77 20    ld   (ix+$20),a
3FBB: C6 10       add  a,$10
3FBD: DD 77 24    ld   (ix+$24),a
3FC0: DD 7E 21    ld   a,(ix+$21)
3FC3: DD 77 25    ld   (ix+$25),a
3FC6: DD 36 22 00 ld   (ix+$22),$00
3FCA: DD 36 26 00 ld   (ix+$26),$00
3FCE: DD 36 23 35 ld   (ix+$23),$35
3FD2: DD 36 27 36 ld   (ix+$27),$36
3FD6: 3A D6 84    ld   a,($84D6)
3FD9: A7          and  a
3FDA: C2 E4 3F    jp   nz,$3FE4
3FDD: AF          xor  a
3FDE: 32 C6 84    ld   ($84C6),a
3FE1: 3E 40       ld   a,$40
3FE3: CF          rst  $08
3FE4: 3E 3C       ld   a,$3C
3FE6: D7          rst  $10


57C0: E5          push hl
57C1: 67          ld   h,a
57C2: 2E 04       ld   l,$04
57C4: 08          ex   af,af'
57C5: F5          push af
57C6: CB 6F       bit  5,a
57C8: 28 05       jr   z,$57CF
57CA: 3E FF       ld   a,$FF
57CC: 32 A1 84    ld   ($84A1),a
57CF: 3E 00       ld   a,$00
57D1: CD 5E 36    call $365E
57D4: E5          push hl
57D5: 21 10 00    ld   hl,$0010
57D8: 19          add  hl,de
57D9: 54          ld   d,h
57DA: 5D          ld   e,l
57DB: E1          pop  hl
57DC: 24          inc  h
57DD: 3C          inc  a
57DE: CD 5E 36    call $365E
57E1: E5          push hl
57E2: 21 10 00    ld   hl,$0010
57E5: 09          add  hl,bc
57E6: 44          ld   b,h
57E7: 4D          ld   c,l
57E8: E1          pop  hl
57E9: 24          inc  h
57EA: 3C          inc  a
57EB: CD 5E 36    call $365E
57EE: E5          push hl
57EF: 21 F0 FF    ld   hl,$FFF0
57F2: 19          add  hl,de
57F3: 54          ld   d,h
57F4: 5D          ld   e,l
57F5: E1          pop  hl
57F6: 24          inc  h
57F7: 3C          inc  a
57F8: CD 5E 36    call $365E
57FB: F1          pop  af
57FC: 08          ex   af,af'
57FD: E1          pop  hl
57FE: C9          ret

57FF: 3E 01       ld   a,$01
5801: 32 45 83    ld   ($8345),a
5804: C9          ret
5805: 21 01 82    ld   hl,$8201
5808: 22 BD 84    ld   ($84BD),hl
580B: 3E 01       ld   a,$01
580D: F7          rst  $30
580E: 3A 64 85    ld   a,($8564)
5811: CB 47       bit  0,a
5813: 20 F6       jr   nz,$580B
5815: 21 1C 02    ld   hl,$021C
5818: 22 71 85    ld   ($8571),hl
581B: 3E 01       ld   a,$01
581D: F7          rst  $30
581E: 3A A6 84    ld   a,($84A6)
5821: FE 0B       cp   $0B
5823: 30 07       jr   nc,$582C
5825: 3E 40       ld   a,$40
5827: 32 64 85    ld   ($8564),a
582A: 18 EF       jr   $581B
582C: 21 A0 6A    ld   hl,$6AA0
582F: 22 69 85    ld   ($8569),hl
5832: 3E 01       ld   a,$01
5834: 32 64 85    ld   ($8564),a
5837: 3E 4A       ld   a,$4A
5839: D7          rst  $10
583A: 3E 98       ld   a,$98
583C: 32 0B D5    ld   ($D50B),a
583F: 3E 01       ld   a,$01
5841: F7          rst  $30
5842: 3A 64 85    ld   a,($8564)
5845: CB 47       bit  0,a
5847: 20 F6       jr   nz,$583F
5849: 06 32       ld   b,$32
584B: 3A 74 81    ld   a,($8174)
584E: 80          add  a,b
584F: 32 74 81    ld   ($8174),a
5852: 3E 33       ld   a,$33
5854: D7          rst  $10
5855: 3E 34       ld   a,$34
5857: D7          rst  $10
5858: 3E 2F       ld   a,$2F
585A: 32 BE 83    ld   ($83BE),a
585D: 3E 2E       ld   a,$2E
585F: 32 C2 83    ld   ($83C2),a
5862: 3E 81       ld   a,$81
5864: 32 0B D5    ld   ($D50B),a
5867: 3E 3C       ld   a,$3C
5869: F7          rst  $30
586A: 3E 29       ld   a,$29
586C: CF          rst  $08
586D: 3E 49       ld   a,$49
586F: D7          rst  $10
5870: 3E 82       ld   a,$82
5872: 32 0B D5    ld   ($D50B),a
5875: 21 79 3A    ld   hl,$3A79
5878: 22 90 84    ld   ($8490),hl
587B: CD 8A 37    call $378A
587E: 3A 93 84    ld   a,($8493)
5881: D6 FE       sub  $FE
5883: 32 FC 82    ld   ($82FC),a
5886: 32 FE 82    ld   ($82FE),a
5889: C6 10       add  a,$10
588B: 32 FA 82    ld   ($82FA),a
588E: CD E7 02    call $02E7
5891: 3E 01       ld   a,$01
5893: F7          rst  $30
5894: C3 7B 58    jp   $587B


7300: 3E 01       ld   a,$01                                          
7302: F7          rst  $30                                            
7303: DD 21 BB 83 ld   ix,$83BB                                       
7307: DD 36 2B 28 ld   (ix+$2b),$28
730B: DD 36 2F 29 ld   (ix+$2f),$29
730F: DD 36 33 2A ld   (ix+$33),$2A
7313: DD 36 37 2B ld   (ix+$37),$2B
7317: 3E 14       ld   a,$14
7319: F7          rst  $30
731A: DD 36 2B 2C ld   (ix+$2b),$2C
731E: DD 36 2F 2D ld   (ix+$2f),$2D
7322: DD 36 33 2E ld   (ix+$33),$2E
7326: DD 36 37 2F ld   (ix+$37),$2F
732A: 3E 14       ld   a,$14
732C: F7          rst  $30
732D: C3 00 73    jp   $7300
7330: 3E 01       ld   a,$01
7332: F7          rst  $30
7333: AF          xor  a
7334: 32 D6 84    ld   ($84D6),a
7337: 3A D8 81    ld   a,($81D8)
733A: CB 67       bit  4,a
733C: C2 84 73    jp   nz,$7384
733F: 3A C4 84    ld   a,($84C4)
7342: CB 67       bit  4,a
7344: CA 84 73    jp   z,$7384
7347: 3A D8 81    ld   a,($81D8)
734A: 32 C4 84    ld   ($84C4),a
734D: CB 47       bit  0,a
734F: 20 06       jr   nz,$7357
7351: 21 F3 77    ld   hl,$77F3
7354: C3 64 73    jp   $7364
7357: CB 4F       bit  1,a
7359: 20 06       jr   nz,$7361
735B: 21 2B 78    ld   hl,$782B
735E: C3 64 73    jp   $7364
7361: 21 63 78    ld   hl,$7863
7364: 22 D4 84    ld   ($84D4),hl
7367: 3E 01       ld   a,$01
7369: 32 C5 84    ld   ($84C5),a
736C: DD 21 BB 83 ld   ix,$83BB
7370: DD 7E 20    ld   a,(ix+$20)
7373: 32 A3 84    ld   ($84A3),a
7376: 3E 96       ld   a,$96
7378: 32 0B D5    ld   ($D50B),a
737B: 3E 3F       ld   a,$3F
737D: CF          rst  $08
737E: 3E 41       ld   a,$41
7380: D7          rst  $10
7381: 3E 3E       ld   a,$3E
7383: D7          rst  $10
7384: 3A D8 81    ld   a,($81D8)
7387: 32 C4 84    ld   ($84C4),a
738A: C3 30 73    jp   $7330
738D: 3E 01       ld   a,$01
738F: F7          rst  $30
7390: 3E FF       ld   a,$FF
7392: 32 D6 84    ld   ($84D6),a
7395: DD 21 BB 83 ld   ix,$83BB
7399: 2A D4 84    ld   hl,($84D4)
739C: 46          ld   b,(hl)
739D: 23          inc  hl
739E: 4E          ld   c,(hl)
739F: 23          inc  hl
73A0: 56          ld   d,(hl)
73A1: 23          inc  hl
73A2: 5E          ld   e,(hl)
73A3: 23          inc  hl
73A4: 3A D7 84    ld   a,($84D7)
73A7: A7          and  a
73A8: C2 0B 74    jp   nz,$740B
73AB: DD 7E 20    ld   a,(ix+$20)
73AE: 80          add  a,b
73AF: FE E4       cp   $E4
73B1: DA C8 73    jp   c,$73C8
73B4: DD 7E 21    ld   a,(ix+$21)
73B7: 3D          dec  a
73B8: FE 30       cp   $30
73BA: DA 27 74    jp   c,$7427
73BD: DD 77 21    ld   (ix+$21),a
73C0: C6 10       add  a,$10
73C2: DD 77 25    ld   (ix+$25),a
73C5: C3 8D 73    jp   $738D
73C8: DD 77 20    ld   (ix+$20),a
73CB: DD 77 24    ld   (ix+$24),a
73CE: FE 18       cp   $18
73D0: D2 0B 74    jp   nc,$740B
73D3: 3A D7 84    ld   a,($84D7)
73D6: CB C7       set  0,a
73D8: 32 D7 84    ld   ($84D7),a
73DB: DD 7E 20    ld   a,(ix+$20)
73DE: D6 08       sub  $08
73E0: DD 77 20    ld   (ix+$20),a
73E3: C6 10       add  a,$10
73E5: DD 77 24    ld   (ix+$24),a
73E8: DD 7E 21    ld   a,(ix+$21)
73EB: DD 77 25    ld   (ix+$25),a
73EE: DD 36 22 00 ld   (ix+$22),$00
73F2: DD 36 26 00 ld   (ix+$26),$00
73F6: DD 36 23 35 ld   (ix+$23),$35
73FA: DD 36 27 36 ld   (ix+$27),$36
73FE: C3 0B 74    jp   $740B
7401: AF          xor  a
7402: 32 C6 84    ld   ($84C6),a
7405: 3E 40       ld   a,$40
7407: CF          rst  $08
7408: 3E 3F       ld   a,$3F
740A: D7          rst  $10
740B: DD 7E 21    ld   a,(ix+$21)
740E: 81          add  a,c
740F: FE 2E       cp   $2E
7411: D2 18 74    jp   nc,$7418
7414: 3E 30       ld   a,$30
7416: 0E 00       ld   c,$00
7418: DD 77 21    ld   (ix+$21),a
741B: DD 7E 25    ld   a,(ix+$25)
741E: 81          add  a,c
741F: DD 77 25    ld   (ix+$25),a
7422: 7B          ld   a,e
7423: B7          or   a
7424: C2 95 74    jp   nz,$7495
7427: 3A D7 84    ld   a,($84D7)
742A: A7          and  a
742B: C2 01 74    jp   nz,$7401
742E: DD 7E 20    ld   a,(ix+$20)
7431: 21 A4 84    ld   hl,$84A4
7434: 77          ld   (hl),a
7435: 2B          dec  hl
7436: DD 7E 08    ld   a,(ix+$08)
7439: BE          cp   (hl)
743A: 23          inc  hl
743B: DA 46 74    jp   c,$7446
743E: BE          cp   (hl)
743F: 2B          dec  hl
7440: DA 4B 74    jp   c,$744B
7443: C3 5E 74    jp   $745E
7446: BE          cp   (hl)
7447: 2B          dec  hl
7448: DA 5E 74    jp   c,$745E
744B: 3E 82       ld   a,$82
744D: 32 3B 84    ld   ($843B),a
7450: 06 0A       ld   b,$0A
7452: 3A 74 81    ld   a,($8174)
7455: 80          add  a,b
7456: 32 74 81    ld   ($8174),a
7459: 3E 02       ld   a,$02
745B: 32 A1 84    ld   ($84A1),a
745E: DD 7E 14    ld   a,(ix+$14)
7461: BE          cp   (hl)
7462: 23          inc  hl
7463: DA 6D 74    jp   c,$746D
7466: BE          cp   (hl)
7467: DA 71 74    jp   c,$7471
746A: C3 84 74    jp   $7484
746D: BE          cp   (hl)
746E: DA 84 74    jp   c,$7484
7471: 3E 82       ld   a,$82
7473: 32 3B 84    ld   ($843B),a
7476: 06 0A       ld   b,$0A
7478: 3A 74 81    ld   a,($8174)
747B: 80          add  a,b
747C: 32 74 81    ld   ($8174),a
747F: 3E 01       ld   a,$01
7481: 32 A2 84    ld   ($84A2),a
7484: DD 36 21 30 ld   (ix+$21),$30
7488: DD 36 25 40 ld   (ix+$25),$40
748C: 3E 3E       ld   a,$3E
748E: CF          rst  $08
748F: 3E 41       ld   a,$41
7491: CF          rst  $08
7492: 3E 3F       ld   a,$3F
7494: D7          rst  $10
7495: 47          ld   b,a
7496: 3A D7 84    ld   a,($84D7)
7499: A7          and  a
749A: 78          ld   a,b
749B: C2 A5 74    jp   nz,$74A5
749E: DD 77 27    ld   (ix+$27),a
74A1: 3C          inc  a
74A2: DD 77 23    ld   (ix+$23),a
74A5: 3A C5 84    ld   a,($84C5)
74A8: 3D          dec  a
74A9: 20 06       jr   nz,$74B1
74AB: 22 D4 84    ld   ($84D4),hl
74AE: 23          inc  hl
74AF: 23          inc  hl
74B0: 7E          ld   a,(hl)
74B1: 32 C5 84    ld   ($84C5),a
74B4: C3 8D 73    jp   $738D
74B7: 3E 01       ld   a,$01
74B9: F7          rst  $30
74BA: 3E 39       ld   a,$39
74BC: D7          rst  $10
74BD: 3E 3A       ld   a,$3A
74BF: D7          rst  $10
74C0: 3E 3B       ld   a,$3B
74C2: D7          rst  $10
74C3: 3E 3C       ld   a,$3C
74C5: D7          rst  $10
74C6: 3E 3D       ld   a,$3D
74C8: D7          rst  $10
74C9: 3E 3E       ld   a,$3E
74CB: D7          rst  $10
74CC: 3E 3F       ld   a,$3F
74CE: D7          rst  $10
74CF: 3E 41       ld   a,$41
74D1: D7          rst  $10
74D2: 3E 43       ld   a,$43
74D4: D7          rst  $10
74D5: 3A D7 84    ld   a,($84D7)
74D8: A7          and  a
74D9: C2 32 75    jp   nz,$7532
74DC: 3A C6 84    ld   a,($84C6)
74DF: A7          and  a
74E0: CA 32 75    jp   z,$7532
74E3: 3E A0       ld   a,$A0
74E5: 32 0B D5    ld   ($D50B),a
74E8: 3E 9A       ld   a,$9A
74EA: 32 0B D5    ld   ($D50B),a
74ED: DD 21 BB 83 ld   ix,$83BB
74F1: DD 36 3B 30 ld   (ix+$3b),$30
74F5: DD 7E 24    ld   a,(ix+$24)
74F8: DD 77 38    ld   (ix+$38),a
74FB: DD 7E 25    ld   a,(ix+$25)
74FE: C6 20       add  a,$20
7500: DD 77 39    ld   (ix+$39),a
7503: 06 64       ld   b,$64
7505: 3A 74 81    ld   a,($8174)
7508: 80          add  a,b
7509: 32 74 81    ld   ($8174),a
750C: 06 03       ld   b,$03
750E: 3E 1E       ld   a,$1E
7510: F7          rst  $30
7511: DD 36 3B 31 ld   (ix+$3b),$31
7515: 3E 1E       ld   a,$1E
7517: F7          rst  $30
7518: DD 36 3B 30 ld   (ix+$3b),$30
751C: 10 F0       djnz $750E
751E: 3E 1E       ld   a,$1E
7520: F7          rst  $30
7521: 3E FF       ld   a,$FF
7523: 32 5A 83    ld   ($835A),a
7526: 3E 00       ld   a,$00
7528: 32 34 84    ld   ($8434),a
752B: 3E 00       ld   a,$00
752D: EF          rst  $28
752E: D9          exx
752F: 79          ld   a,c
7530: D9          exx
7531: D7          rst  $10
7532: 3E 42       ld   a,$42
7534: CF          rst  $08
7535: C3 30 30    jp   $3030
7538: 3E 28       ld   a,$28
753A: F7          rst  $30
753B: 3A D7 84    ld   a,($84D7)
753E: CB 5F       bit  3,a
7540: CA 64 75    jp   z,$7564
7543: 26 07       ld   h,$07
7545: 2E 06       ld   l,$06
7547: 16 05       ld   d,$05
7549: 1E 04       ld   e,$04
754B: 06 05       ld   b,$05
754D: 7D          ld   a,l
754E: FE 06       cp   $06
7550: C2 58 75    jp   nz,$7558
7553: 3E B8       ld   a,$B8
7555: 32 0B D5    ld   ($D50B),a
7558: DD 74 53    ld   (ix+$53),h
755B: DD 75 57    ld   (ix+$57),l
755E: EB          ex   de,hl
755F: 3E 1E       ld   a,$1E
7561: F7          rst  $30
7562: 10 E9       djnz $754D
7564: 3E FF       ld   a,$FF
7566: 32 5A 83    ld   ($835A),a
7569: 3E FF       ld   a,$FF
756B: 32 34 84    ld   ($8434),a
756E: 3E 00       ld   a,$00
7570: EF          rst  $28
7571: D9          exx
7572: 79          ld   a,c
7573: D9          exx
7574: D7          rst  $10
7575: 3E 01       ld   a,$01
7577: F7          rst  $30
7578: DD 21 BB 83 ld   ix,$83BB
757C: 3A D8 81    ld   a,($81D8)
757F: CB 5F       bit  3,a
7581: CA 75 75    jp   z,$7575
7584: CB 47       bit  0,a
7586: CA 9C 75    jp   z,$759C
7589: CB 4F       bit  1,a
758B: CA CC 75    jp   z,$75CC
758E: DD 36 22 00 ld   (ix+$22),$00
7592: DD 36 26 00 ld   (ix+$26),$00
7596: 3E 03       ld   a,$03
7598: F7          rst  $30
7599: C3 75 75    jp   $7575
759C: 3E 9B       ld   a,$9B
759E: 32 0B D5    ld   ($D50B),a
75A1: DD 7E 20    ld   a,(ix+$20)
75A4: C6 FD       add  a,$FD
75A6: DD 77 20    ld   (ix+$20),a
75A9: DD 77 24    ld   (ix+$24),a
75AC: 3A CD 84    ld   a,($84CD)
75AF: DD 77 27    ld   (ix+$27),a
75B2: 3C          inc  a
75B3: DD 77 23    ld   (ix+$23),a
75B6: 3C          inc  a
75B7: FE 18       cp   $18
75B9: C2 BE 75    jp   nz,$75BE
75BC: 3E 10       ld   a,$10
75BE: 32 CD 84    ld   ($84CD),a
75C1: DD 36 22 00 ld   (ix+$22),$00
75C5: DD 36 26 00 ld   (ix+$26),$00
75C9: C3 96 75    jp   $7596
75CC: DD 7E 20    ld   a,(ix+$20)
75CF: C6 03       add  a,$03
75D1: FE E4       cp   $E4
75D3: D2 96 75    jp   nc,$7596
75D6: F5          push af
75D7: 3E 9B       ld   a,$9B
75D9: 32 0B D5    ld   ($D50B),a
75DC: F1          pop  af
75DD: DD 77 20    ld   (ix+$20),a
75E0: DD 77 24    ld   (ix+$24),a
75E3: 3A CD 84    ld   a,($84CD)
75E6: DD 77 27    ld   (ix+$27),a
75E9: 3C          inc  a
75EA: DD 77 23    ld   (ix+$23),a
75ED: 3C          inc  a
75EE: FE 18       cp   $18
75F0: C2 F5 75    jp   nz,$75F5
75F3: 3E 10       ld   a,$10
75F5: 32 CD 84    ld   ($84CD),a
75F8: DD 36 22 01 ld   (ix+$22),$01
75FC: DD 36 26 01 ld   (ix+$26),$01
7600: C3 96 75    jp   $7596
7603: 3E 01       ld   a,$01
7605: F7          rst  $30
7606: DD 21 BB 83 ld   ix,$83BB
760A: 2A D8 84    ld   hl,($84D8)
760D: 11 D2 1E    ld   de,$1ED2
7610: ED 52       sbc  hl,de
7612: C2 1B 76    jp   nz,$761B
7615: 21 B4 1E    ld   hl,$1EB4
7618: 22 D8 84    ld   ($84D8),hl
761B: 2A D8 84    ld   hl,($84D8)
761E: 7E          ld   a,(hl)
761F: 23          inc  hl
7620: 46          ld   b,(hl)
7621: 23          inc  hl
7622: 4E          ld   c,(hl)
7623: 23          inc  hl
7624: 22 D8 84    ld   ($84D8),hl
7627: F7          rst  $30
7628: 78          ld   a,b
7629: F7          rst  $30
762A: 79          ld   a,c
762B: F7          rst  $30
762C: 3E C2       ld   a,$C2
762E: 32 0B D5    ld   ($D50B),a
7631: DD 36 50 0D ld   (ix+$50),$0D
7635: DD 36 51 A2 ld   (ix+$51),$A2
7639: DD 36 54 0D ld   (ix+$54),$0D
763D: DD 36 55 B2 ld   (ix+$55),$B2
7641: 06 05       ld   b,$05
7643: DD 36 53 01 ld   (ix+$53),$01
7647: DD 36 57 00 ld   (ix+$57),$00
764B: 3E 3C       ld   a,$3C
764D: F7          rst  $30
764E: DD 7E 20    ld   a,(ix+$20)
7651: FE D0       cp   $D0
7653: DA 61 76    jp   c,$7661
7656: FE D4       cp   $D4
7658: D4 55 77    call nc,$7755
765B: DC 59 77    call c,$7759
765E: C3 69 76    jp   $7669
7661: FE A0       cp   $A0
7663: D4 5D 77    call nc,$775D
7666: DC 61 77    call c,$7761
7669: DD 36 53 03 ld   (ix+$53),$03
766D: DD 36 57 02 ld   (ix+$57),$02
7671: 3E BE       ld   a,$BE
7673: 32 0B D5    ld   ($D50B),a
7676: DD 36 5C 1D ld   (ix+$5c),$1D
767A: DD 36 5D B2 ld   (ix+$5d),$B2
767E: DD 36 5F 3B ld   (ix+$5f),$3B
7682: 3E 01       ld   a,$01
7684: F7          rst  $30
7685: 46          ld   b,(hl)
7686: 23          inc  hl
7687: 4E          ld   c,(hl)
7688: 23          inc  hl
7689: 56          ld   d,(hl)
768A: 23          inc  hl
768B: 5E          ld   e,(hl)
768C: 23          inc  hl
768D: 1C          inc  e
768E: 1D          dec  e
768F: CA 19 77    jp   z,$7719
7692: 3E 01       ld   a,$01
7694: F7          rst  $30
7695: DD 7E 5C    ld   a,(ix+$5c)
7698: 80          add  a,b
7699: DD 77 5C    ld   (ix+$5c),a
769C: DD 7E 5D    ld   a,(ix+$5d)
769F: 81          add  a,c
76A0: DD 77 5D    ld   (ix+$5d),a
76A3: DD 73 5F    ld   (ix+$5f),e
76A6: DD 7E 24    ld   a,(ix+$24)
76A9: DD 96 5C    sub  (ix+$5c)
76AC: F2 B1 76    jp   p,$76B1
76AF: ED 44       neg
76B1: FE 08       cp   $08
76B3: D2 12 77    jp   nc,$7712
76B6: DD 7E 25    ld   a,(ix+$25)
76B9: C6 08       add  a,$08
76BB: DD BE 5D    cp   (ix+$5d)
76BE: DA 12 77    jp   c,$7712
76C1: D6 1B       sub  $1B
76C3: DD BE 5D    cp   (ix+$5d)
76C6: D2 12 77    jp   nc,$7712
76C9: 3E AF       ld   a,$AF
76CB: 32 0B D5    ld   ($D50B),a
76CE: 3A D7 84    ld   a,($84D7)
76D1: CB DF       set  3,a
76D3: 32 D7 84    ld   ($84D7),a
76D6: DD 7E 20    ld   a,(ix+$20)
76D9: D6 08       sub  $08
76DB: DD 77 20    ld   (ix+$20),a
76DE: C6 10       add  a,$10
76E0: DD 77 24    ld   (ix+$24),a
76E3: DD 7E 21    ld   a,(ix+$21)
76E6: DD 77 25    ld   (ix+$25),a
76E9: DD 36 22 00 ld   (ix+$22),$00
76ED: DD 36 26 00 ld   (ix+$26),$00
76F1: DD 36 23 35 ld   (ix+$23),$35
76F5: DD 36 27 36 ld   (ix+$27),$36
76F9: 3A D6 84    ld   a,($84D6)
76FC: A7          and  a
76FD: C2 07 77    jp   nz,$7707
7700: AF          xor  a
7701: 32 C6 84    ld   ($84C6),a
7704: 3E 40       ld   a,$40
7706: CF          rst  $08
7707: DD 36 5C 00 ld   (ix+$5c),$00
770B: DD 36 5D 00 ld   (ix+$5d),$00
770F: 3E 43       ld   a,$43
7711: D7          rst  $10
7712: 15          dec  d
7713: C2 92 76    jp   nz,$7692
7716: C3 82 76    jp   $7682
7719: DD 36 5C 00 ld   (ix+$5c),$00
771D: DD 36 5D 00 ld   (ix+$5d),$00
7721: 26 09       ld   h,$09
7723: 2E 08       ld   l,$08
7725: 16 0B       ld   d,$0B
7727: 1E 0A       ld   e,$0A
7729: 06 05       ld   b,$05
772B: 7D          ld   a,l
772C: FE 08       cp   $08
772E: C2 36 77    jp   nz,$7736
7731: 3E C3       ld   a,$C3
7733: 32 0B D5    ld   ($D50B),a
7736: DD 74 53    ld   (ix+$53),h
7739: DD 75 57    ld   (ix+$57),l
773C: EB          ex   de,hl
773D: 3E 1E       ld   a,$1E
773F: F7          rst  $30
7740: 10 E9       djnz $772B
7742: DD 36 50 00 ld   (ix+$50),$00
7746: DD 36 51 00 ld   (ix+$51),$00
774A: DD 36 54 00 ld   (ix+$54),$00
774E: DD 36 55 00 ld   (ix+$55),$00
7752: C3 03 76    jp   $7603
7755: 21 90 1E    ld   hl,$1E90
7758: C9          ret
7759: 21 68 1E    ld   hl,$1E68
775C: C9          ret
775D: 21 3C 1E    ld   hl,$1E3C
7760: C9          ret
7761: 21 10 1E    ld   hl,$1E10
7764: C9          ret
7765: 21 BB 83    ld   hl,$83BB
7768: 36 FF       ld   (hl),$FF
776A: 11 BC 83    ld   de,$83BC
776D: 01 5F 00    ld   bc,$005F
7770: ED B0       ldir
7772: 21 00 C8    ld   hl,$C800
7775: 36 FF       ld   (hl),$FF
7777: 11 01 C8    ld   de,$C801
777A: 01 FF 03    ld   bc,$03FF
777D: ED B0       ldir
777F: 21 00 CC    ld   hl,$CC00
7782: 36 FF       ld   (hl),$FF
7784: 11 01 CC    ld   de,$CC01
7787: 01 FF 03    ld   bc,$03FF
778A: ED B0       ldir
778C: C9          ret
778D: 21 FF 20    ld   hl,$20FF
7790: 22 1F 84    ld   ($841F),hl
7793: 21 20 D2    ld   hl,$D220
7796: 22 21 84    ld   ($8421),hl
7799: 21 B0 5B    ld   hl,$5BB0
779C: 22 23 84    ld   ($8423),hl
779F: C9          ret
77A0: 3E 01       ld   a,$01
77A2: F7          rst  $30
77A3: DD 21 BB 83 ld   ix,$83BB
77A7: DD 7E 21    ld   a,(ix+$21)
77AA: D6 00       sub  $00
77AC: F2 B1 77    jp   p,$77B1
77AF: ED 44       neg
77B1: FE 05       cp   $05
77B3: DA A0 77    jp   c,$77A0
77B6: 3A D7 84    ld   a,($84D7)
77B9: A7          and  a
77BA: C2 D8 77    jp   nz,$77D8
77BD: DD 7E 21    ld   a,(ix+$21)
77C0: DD 96 25    sub  (ix+$25)
77C3: F2 C8 77    jp   p,$77C8
77C6: ED 44       neg
77C8: FE 0E       cp   $0E
77CA: D2 A0 77    jp   nc,$77A0
77CD: DD 7E 21    ld   a,(ix+$21)
77D0: C6 10       add  a,$10
77D2: DD 77 25    ld   (ix+$25),a
77D5: C3 A0 77    jp   $77A0
77D8: DD 7E 20    ld   a,(ix+$20)
77DB: DD 96 24    sub  (ix+$24)
77DE: F2 E3 77    jp   p,$77E3
77E1: ED 44       neg
77E3: FE 0E       cp   $0E
77E5: D2 A0 77    jp   nc,$77A0
77E8: DD 7E 20    ld   a,(ix+$20)
77EB: C6 10       add  a,$10
77ED: DD 77 24    ld   (ix+$24),a
77F0: C3 A0 77    jp   $77A0
