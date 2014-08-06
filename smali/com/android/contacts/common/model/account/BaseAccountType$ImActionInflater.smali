.class public Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f09007b

    .line 628
    if-nez p1, :cond_0

    .line 639
    :goto_0
    :pswitch_0
    return v0

    .line 629
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 630
    :pswitch_1
    const v0, 0x7f090073

    goto :goto_0

    .line 631
    :pswitch_2
    const v0, 0x7f090074

    goto :goto_0

    .line 632
    :pswitch_3
    const v0, 0x7f090075

    goto :goto_0

    .line 633
    :pswitch_4
    const v0, 0x7f090076

    goto :goto_0

    .line 634
    :pswitch_5
    const v0, 0x7f090077

    goto :goto_0

    .line 635
    :pswitch_6
    const v0, 0x7f090078

    goto :goto_0

    .line 636
    :pswitch_7
    const v0, 0x7f090079

    goto :goto_0

    .line 637
    :pswitch_8
    const v0, 0x7f09007a

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
