.class public final Lcom/android/contacts/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ContactBrowser:[I

.field public static final ContactListItemView:[I

.field public static final EdgeTriggerView:[I

.field public static final Favorites:[I

.field public static final InterpolatingLayout_Layout:[I

.field public static final Mapping:[I

.field public static final ProportionalLayout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 3232
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ContactBrowser:[I

    .line 3347
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    .line 3833
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/common/R$styleable;->EdgeTriggerView:[I

    .line 3879
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010024

    aput v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/R$styleable;->Favorites:[I

    .line 3930
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/common/R$styleable;->InterpolatingLayout_Layout:[I

    .line 4145
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/contacts/common/R$styleable;->Mapping:[I

    .line 4233
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ProportionalLayout:[I

    return-void

    .line 3232
    nop

    :array_0
    .array-data 4
        0x7f01001f
        0x7f010020
        0x7f010021
    .end array-data

    .line 3347
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
    .end array-data

    .line 3833
    :array_2
    .array-data 4
        0x7f01002a
        0x7f01002b
    .end array-data

    .line 3930
    :array_3
    .array-data 4
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
        0x7f010034
        0x7f010035
        0x7f010036
        0x7f010037
    .end array-data

    .line 4145
    :array_4
    .array-data 4
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data

    .line 4233
    :array_5
    .array-data 4
        0x7f010022
        0x7f010023
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3217
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
