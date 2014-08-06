.class Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatorViewEntry"
.end annotation


# instance fields
.field private mIsInSubSection:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    .line 1221
    return-void
.end method


# virtual methods
.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .param p1, "isInSubSection"    # Z

    .prologue
    .line 1224
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->mIsInSubSection:Z

    .line 1225
    return-void
.end method
