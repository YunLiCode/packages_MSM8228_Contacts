.class public interface abstract Lcom/android/contacts/common/util/SimContactsConstants;
.super Ljava/lang/Object;
.source "SimContactsConstants.java"


# static fields
.field public static final SIM_CARD_URI:Landroid/net/Uri;

.field public static final SINGLE_CARD_URI:Landroid/net/Uri;

.field public static final UIM_CARD_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/SimContactsConstants;->SINGLE_CARD_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://iccmsim/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/SimContactsConstants;->UIM_CARD_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://iccmsim/adn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/SimContactsConstants;->SIM_CARD_URI:Landroid/net/Uri;

    return-void
.end method
