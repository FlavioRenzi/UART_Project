/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2717149903;
extern char *IEEE_P_2592010699;
extern char *SIMPRIM_P_4208868169;

unsigned char ieee_p_2592010699_sub_1388759734_503743352(char *, unsigned char );
void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
void simprim_p_4208868169_sub_293484706_3008368149(char *, char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , unsigned char , int64 , unsigned char , unsigned char );


static void simprim_a_0314276563_2431929443_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 4168);
    t2 = (t0 + 1576U);
    t3 = (t0 + 5056);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 4928);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_0314276563_2431929443_p_1(char *t0)
{
    char t41[16];
    char t50[16];
    char t51[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    int64 t26;
    int64 t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int64 t32;
    int64 t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    int64 t49;
    char *t52;
    char *t53;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3112U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = t5;
    t2 = (t0 + 3232U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB4;

LAB6:    t2 = (t0 + 2272U);
    t3 = *((char **)t2);
    t22 = ((unsigned char)0 - 0);
    t23 = (t22 * 1);
    t24 = (8U * t23);
    t25 = (0 + t24);
    t2 = (t3 + t25);
    t26 = *((int64 *)t2);
    t6 = (t0 + 2392U);
    t10 = *((char **)t6);
    t27 = *((int64 *)t10);
    t5 = (t26 < t27);
    if (t5 == 1)
        goto LAB23;

LAB24:    t6 = (t0 + 2272U);
    t13 = *((char **)t6);
    t28 = ((unsigned char)1 - 0);
    t29 = (t28 * 1);
    t30 = (8U * t29);
    t31 = (0 + t30);
    t6 = (t13 + t31);
    t32 = *((int64 *)t6);
    t16 = (t0 + 2392U);
    t19 = *((char **)t16);
    t33 = *((int64 *)t19);
    t7 = (t32 < t33);
    t4 = t7;

LAB25:    if (t4 != 0)
        goto LAB20;

LAB22:    t16 = (t0 + 4416);
    t34 = (t0 + 2992U);
    t35 = *((char **)t34);
    t34 = (t35 + 0);
    t36 = (t0 + 1256U);
    t37 = (t0 + 5120);
    t38 = (t0 + 2752U);
    t39 = *((char **)t38);
    t38 = (t0 + 8008);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 1;
    t43 = (t42 + 4U);
    *((int *)t43) = 1;
    t43 = (t42 + 8U);
    *((int *)t43) = 1;
    t44 = (1 - 1);
    t45 = (t44 * 1);
    t45 = (t45 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t45;
    t43 = (t0 + 3112U);
    t46 = *((char **)t43);
    t8 = *((unsigned char *)t46);
    t43 = (t0 + 2872U);
    t47 = *((char **)t43);
    t9 = *((unsigned char *)t47);
    t43 = (t0 + 2392U);
    t48 = *((char **)t43);
    t49 = *((int64 *)t48);
    simprim_p_4208868169_sub_293484706_3008368149(SIMPRIM_P_4208868169, t16, t34, t36, 0U, 0U, t37, t39, t38, t41, t8, t9, t49, (unsigned char)0, (unsigned char)1);

LAB21:
LAB5:    t2 = (t0 + 2992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)0);
    if (t5 != 0)
        goto LAB26;

LAB28:
LAB27:    t2 = (t0 + 2992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB29;

LAB31:
LAB30:    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 2512U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = t5;
    t2 = (t0 + 4416);
    t3 = (t0 + 1256U);
    t6 = (t0 + 5120);
    t10 = (t0 + 2632U);
    t13 = *((char **)t10);
    t10 = (t0 + 8009);
    t19 = (t41 + 0U);
    t34 = (t19 + 0U);
    *((int *)t34) = 1;
    t34 = (t19 + 4U);
    *((int *)t34) = 1;
    t34 = (t19 + 8U);
    *((int *)t34) = 1;
    t22 = (1 - 1);
    t23 = (t22 * 1);
    t23 = (t23 + 1);
    t34 = (t19 + 12U);
    *((unsigned int *)t34) = t23;
    t34 = (t0 + 2512U);
    t35 = *((char **)t34);
    t4 = *((unsigned char *)t35);
    t34 = xsi_get_transient_memory(32U);
    memset(t34, 0, 32U);
    t36 = t34;
    t28 = (0 - 0);
    t23 = (t28 * 1);
    t24 = (32U * t23);
    t37 = (t36 + t24);
    t38 = t37;
    t39 = (t0 + 1576U);
    t26 = xsi_signal_get_last_event(t39);
    *((int64 *)t38) = t26;
    t40 = (t37 + 8U);
    t42 = (t0 + 2272U);
    t43 = *((char **)t42);
    memcpy(t40, t43, 16U);
    t42 = (t37 + 24U);
    *((unsigned char *)t42) = (unsigned char)1;
    t46 = (t50 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 0;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t44 = (0 - 0);
    t25 = (t44 * 1);
    t25 = (t25 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t25;
    t47 = ((IEEE_P_2717149903) + 1288U);
    t48 = *((char **)t47);
    memcpy(t51, t48, 16U);
    t47 = (t0 + 1912U);
    t52 = *((char **)t47);
    t5 = *((unsigned char *)t52);
    t47 = (t0 + 2032U);
    t53 = *((char **)t47);
    t7 = *((unsigned char *)t53);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t6, t13, t10, t41, t4, t34, t50, t51, (unsigned char)3, t5, t7, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);

LAB34:    t2 = (t0 + 4976);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB35;

LAB1:    return;
LAB4:
LAB9:    t2 = (t0 + 4944);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB7:    t6 = (t0 + 4944);
    *((int *)t6) = 0;
    t2 = (t0 + 3232U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)0;
    goto LAB5;

LAB8:    t6 = (t0 + 1616U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 1616U);
    t13 = *((char **)t6);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 1616U);
    t16 = *((char **)t6);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)6);
    t8 = t18;

LAB16:    if (t8 == 1)
        goto LAB11;

LAB12:    t6 = (t0 + 1616U);
    t19 = *((char **)t6);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)7);
    t7 = t21;

LAB13:    if (t7 == 1)
        goto LAB7;
    else
        goto LAB9;

LAB10:    goto LAB8;

LAB11:    t7 = (unsigned char)1;
    goto LAB13;

LAB14:    t8 = (unsigned char)1;
    goto LAB16;

LAB17:    t9 = (unsigned char)1;
    goto LAB19;

LAB20:    goto LAB21;

LAB23:    t4 = (unsigned char)1;
    goto LAB25;

LAB26:    t2 = (t0 + 2512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t7);
    t2 = (t0 + 2872U);
    t10 = *((char **)t2);
    t2 = (t10 + 0);
    *((unsigned char *)t2) = t8;
    goto LAB27;

LAB29:    t2 = (t0 + 2992U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((unsigned char *)t2) = (unsigned char)0;
    goto LAB30;

LAB32:    t3 = (t0 + 4976);
    *((int *)t3) = 0;
    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

}


extern void simprim_a_0314276563_2431929443_0380265958_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0380265958", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0380265958.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_4234759623_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_4234759623", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_4234759623.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3113191758_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3113191758", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3113191758.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3264065561_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3264065561", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3264065561.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3153182636_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3153182636", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3153182636.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3123959195_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3123959195", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3123959195.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3174726983_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3174726983", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3174726983.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3115778549_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3115778549", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3115778549.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2058659492_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2058659492", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2058659492.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1622687424_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1622687424", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1622687424.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0196040030_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0196040030", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0196040030.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1545239879_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1545239879", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1545239879.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0923604697_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0923604697", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0923604697.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2230296830_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2230296830", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2230296830.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0174931817_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0174931817", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0174931817.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2088723535_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2088723535", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2088723535.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1276063630_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1276063630", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1276063630.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_4255852528_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_4255852528", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_4255852528.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1635407095_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1635407095", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1635407095.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2109542008_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2109542008", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2109542008.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1175905571_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1175905571", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1175905571.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0392695761_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0392695761", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0392695761.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3234532928_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3234532928", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3234532928.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1092570623_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1092570623", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1092570623.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1129968550_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1129968550", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1129968550.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3276790318_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3276790318", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3276790318.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1574442864_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1574442864", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1574442864.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3811230502_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3811230502", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3811230502.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2582286406_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2582286406", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2582286406.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1818900102_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1818900102", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1818900102.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0678826115_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0678826115", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0678826115.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2117720598_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2117720598", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2117720598.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3723933251_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3723933251", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3723933251.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2270428203_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2270428203", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2270428203.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2257688092_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2257688092", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2257688092.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2228693061_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2228693061", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2228693061.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2232762994_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2232762994", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2232762994.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2153403639_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2153403639", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2153403639.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2174238400_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2174238400", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2174238400.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3079332161_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3079332161", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3079332161.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3584066803_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3584066803", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3584066803.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3505361526_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3505361526", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3505361526.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3547022872_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3547022872", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3547022872.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3509450817_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3509450817", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3509450817.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1750332691_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1750332691", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1750332691.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1809260925_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1809260925", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1809260925.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1779780426_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1779780426", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1779780426.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1868193231_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1868193231", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1868193231.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1771151140_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1771151140", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1771151140.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1826523553_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1826523553", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1826523553.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3627483429_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3627483429", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3627483429.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1830609814_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1830609814", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1830609814.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3656739602_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3656739602", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3656739602.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3410019580_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3410019580", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3410019580.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3563253444_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3563253444", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3563253444.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3093027534_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3093027534", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3093027534.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0587234644_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0587234644", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0587234644.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2147201057_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2147201057", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2147201057.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1088235464_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1088235464", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1088235464.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3094703042_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3094703042", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3094703042.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3170375536_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3170375536", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3170375536.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1205112596_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1205112596", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1205112596.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1117493649_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1117493649", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1117493649.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_0919567598_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_0919567598", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_0919567598.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_4264555422_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_4264555422", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_4264555422.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3092112249_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3092112249", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3092112249.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_2234370761_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_2234370761", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_2234370761.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1619748416_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1619748416", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1619748416.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3113857273_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3113857273", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3113857273.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3761818264_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3761818264", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3761818264.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3791298735_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3791298735", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3791298735.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1526757779_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1526757779", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1526757779.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1522668452_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1522668452", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1522668452.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1485090301_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1485090301", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1485090301.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1497810890_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1497810890", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1497810890.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1632177271_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1632177271", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1632177271.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3622189738_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3622189738", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3622189738.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3592704157_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3592704157", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3592704157.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_1855469560_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_1855469560", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_1855469560.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_0314276563_2431929443_3534302255_init()
{
	static char *pe[] = {(void *)simprim_a_0314276563_2431929443_p_0,(void *)simprim_a_0314276563_2431929443_p_1};
	xsi_register_didat("simprim_a_0314276563_2431929443_3534302255", "isim/DUAL_UART_TEST_isim_par.exe.sim/simprim/a_0314276563_2431929443_3534302255.didat");
	xsi_register_executes(pe);
}
