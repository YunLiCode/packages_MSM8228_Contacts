.class Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindTitleViewEntry"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 1241
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1242
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 1243
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
