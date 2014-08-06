.class Lcom/android/contacts/common/list/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 875
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$3;, "Lcom/android/contacts/common/list/ContactEntryListFragment.3;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 878
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$3;, "Lcom/android/contacts/common/list/ContactEntryListFragment.3;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    .line 879
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 880
    return-void
.end method
