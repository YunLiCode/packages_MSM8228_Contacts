.class public Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f090071

    .line 605
    if-nez p1, :cond_0

    .line 610
    :goto_0
    :pswitch_0
    return v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 610
    const v0, 0x7f090072

    goto :goto_0

    .line 607
    :pswitch_1
    const v0, 0x7f09006f

    goto :goto_0

    .line 608
    :pswitch_2
    const v0, 0x7f090070

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
