.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f09000e

    .line 87
    if-nez p0, :cond_0

    .line 130
    :goto_0
    :pswitch_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    const v0, 0x7f090007

    goto :goto_0

    .line 90
    :pswitch_1
    const v0, 0x7f090008

    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f090009

    goto :goto_0

    .line 94
    :pswitch_3
    const v0, 0x7f09000a

    goto :goto_0

    .line 96
    :pswitch_4
    const v0, 0x7f09000b

    goto :goto_0

    .line 98
    :pswitch_5
    const v0, 0x7f09000c

    goto :goto_0

    .line 100
    :pswitch_6
    const v0, 0x7f09000d

    goto :goto_0

    .line 104
    :pswitch_7
    const v0, 0x7f09000f

    goto :goto_0

    .line 106
    :pswitch_8
    const v0, 0x7f090010

    goto :goto_0

    .line 108
    :pswitch_9
    const v0, 0x7f090011

    goto :goto_0

    .line 110
    :pswitch_a
    const v0, 0x7f090012

    goto :goto_0

    .line 112
    :pswitch_b
    const v0, 0x7f090013

    goto :goto_0

    .line 114
    :pswitch_c
    const v0, 0x7f090014

    goto :goto_0

    .line 116
    :pswitch_d
    const v0, 0x7f090015

    goto :goto_0

    .line 118
    :pswitch_e
    const v0, 0x7f090016

    goto :goto_0

    .line 120
    :pswitch_f
    const v0, 0x7f090017

    goto :goto_0

    .line 122
    :pswitch_10
    const v0, 0x7f090018

    goto :goto_0

    .line 124
    :pswitch_11
    const v0, 0x7f090019

    goto :goto_0

    .line 126
    :pswitch_12
    const v0, 0x7f09001a

    goto :goto_0

    .line 128
    :pswitch_13
    const v0, 0x7f09001b

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f090023

    .line 142
    if-nez p0, :cond_0

    .line 185
    :goto_0
    :pswitch_0
    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    const v0, 0x7f09001c

    goto :goto_0

    .line 145
    :pswitch_1
    const v0, 0x7f09001d

    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x7f09001e

    goto :goto_0

    .line 149
    :pswitch_3
    const v0, 0x7f09001f

    goto :goto_0

    .line 151
    :pswitch_4
    const v0, 0x7f090020

    goto :goto_0

    .line 153
    :pswitch_5
    const v0, 0x7f090021

    goto :goto_0

    .line 155
    :pswitch_6
    const v0, 0x7f090022

    goto :goto_0

    .line 159
    :pswitch_7
    const v0, 0x7f090024

    goto :goto_0

    .line 161
    :pswitch_8
    const v0, 0x7f090025

    goto :goto_0

    .line 163
    :pswitch_9
    const v0, 0x7f090026

    goto :goto_0

    .line 165
    :pswitch_a
    const v0, 0x7f090027

    goto :goto_0

    .line 167
    :pswitch_b
    const v0, 0x7f090028

    goto :goto_0

    .line 169
    :pswitch_c
    const v0, 0x7f090029

    goto :goto_0

    .line 171
    :pswitch_d
    const v0, 0x7f09002a

    goto :goto_0

    .line 173
    :pswitch_e
    const v0, 0x7f09002b

    goto :goto_0

    .line 175
    :pswitch_f
    const v0, 0x7f09002c

    goto :goto_0

    .line 177
    :pswitch_10
    const v0, 0x7f09002d

    goto :goto_0

    .line 179
    :pswitch_11
    const v0, 0x7f09002e

    goto :goto_0

    .line 181
    :pswitch_12
    const v0, 0x7f09002f

    goto :goto_0

    .line 183
    :pswitch_13
    const v0, 0x7f090030

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
