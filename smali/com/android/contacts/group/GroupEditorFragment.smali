.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameIsReadOnly:Z

.field private mGroupNameView:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListMembersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListMembersToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

.field private mOrigRingtone:Ljava/lang/String;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

.field private mRingtoneName:Ljava/lang/String;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field private ringtoneChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 902
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 926
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 965
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$5;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 219
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doPickRingtone()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/SuggestedMemberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/group/GroupEditorFragment;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    return-wide v0
.end method

.method private addExistingMembers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 856
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 857
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 858
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 862
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 865
    :cond_0
    return-void
.end method

.method private addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .param p1, "member"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 877
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    .line 878
    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 609
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group not found with URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Closing activity now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 617
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 618
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 619
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 620
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 621
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOrigRingtone:Ljava/lang/String;

    .line 623
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 626
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 620
    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "listMembers":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 844
    .local v2, "size":I
    new-array v1, v2, [J

    .line 845
    .local v1, "membersArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 846
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getRawContactId()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_0
    return-object v1
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 464
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/group/GroupEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 466
    return-void

    .line 462
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 683
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    .line 684
    :cond_0
    return-void
.end method

.method private getAccountType()Lcom/android/contacts/common/model/account/AccountType;
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "groupNameFromTextView":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    const/4 v0, 0x0

    .line 839
    .end local v0    # "groupNameFromTextView":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 7
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 295
    .local v0, "isDefault":Z
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "picked->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", origin->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_1

    const-string v2, ""

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOrigRingtone:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 301
    if-nez p1, :cond_3

    iput-boolean v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    if-eqz v2, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneName(Landroid/net/Uri;)I

    move-result v1

    .line 311
    .local v1, "ringtoneStatus":I
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/group/GroupRingtoneEditorView;->setStatus(ILjava/lang/String;)V

    .line 313
    .end local v1    # "ringtoneStatus":I
    :cond_0
    return-void

    .line 298
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 302
    :cond_3
    iput-boolean v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    goto :goto_1

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOrigRingtone:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 305
    iput-boolean v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    goto :goto_1

    .line 306
    :cond_5
    iput-boolean v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    goto :goto_1
.end method

.method private hasMembershipChange()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNameChange()Z
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 346
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 347
    const-string v0, "groupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 348
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 350
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 351
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 352
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 353
    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 355
    const-string v0, "groupNameIsReadOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 356
    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 358
    const-string v0, "customRingtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 359
    const-string v0, "originalRingtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOrigRingtone:Ljava/lang/String;

    .line 360
    const-string v0, "customRingtoneChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    .line 362
    const-string v0, "membersToAdd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 363
    const-string v0, "membersToRemove"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 364
    const-string v0, "membersToDisplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 365
    return-void
.end method

.method private removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .param p1, "member"    # Lcom/android/contacts/group/GroupEditorFragment$Member;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 893
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->removeMember(J)V

    .line 897
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private selectAccountAndCreateGroup()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    const-string v1, "GroupEditorFragment"

    const-string v2, "No accounts were found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onAccountsNotFound()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 390
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 391
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 397
    :cond_2
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09014e

    sget-object v3, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setupEditorForAccount()V
    .locals 19

    .prologue
    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 484
    .local v4, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v7

    .line 485
    .local v7, "editable":Z
    const/4 v10, 0x0

    .line 486
    .local v10, "isNewEditor":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v14, v7}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->setIsGroupMembershipEditable(Z)V

    .line 492
    if-eqz v7, :cond_8

    const v11, 0x7f040052

    .line 494
    .local v11, "newGroupEditorId":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v11, v14, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v15, "currentEditorForAccount"

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    .line 496
    .local v12, "oldEditorView":Landroid/view/View;
    if-eqz v12, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v11, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 500
    .local v8, "editorView":Landroid/view/View;
    const-string v14, "currentEditorForAccount"

    invoke-virtual {v8, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 501
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 502
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    .line 503
    const/4 v10, 0x1

    .line 511
    .end local v12    # "oldEditorView":Landroid/view/View;
    :cond_1
    const v14, 0x7f0b00a5

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    .line 512
    const/4 v14, 0x1

    new-array v9, v14, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0012

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v9, v14

    .line 514
    .local v9, "filters":[Landroid/text/InputFilter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 515
    if-nez v7, :cond_a

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    .line 517
    const v14, 0x7f0b00bb

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    if-eqz v14, :cond_2

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    new-instance v15, Lcom/android/contacts/group/GroupEditorFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/GroupRingtoneEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v14, :cond_b

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneName(Landroid/net/Uri;)I

    move-result v13

    .line 528
    .local v13, "ringtoneStatus":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneEditor:Lcom/android/contacts/group/GroupRingtoneEditorView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/android/contacts/group/GroupRingtoneEditorView;->setStatus(ILjava/lang/String;)V

    .line 531
    .end local v13    # "ringtoneStatus":I
    :cond_2
    const v14, 0x102000a

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 535
    const v14, 0x7f0b00a4

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 536
    .local v1, "accountHeader":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 538
    .local v5, "accountTypeDisplayLabel":Ljava/lang/CharSequence;
    const v14, 0x7f0b00a0

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 539
    .local v2, "accountIcon":Landroid/widget/ImageView;
    const v14, 0x7f0b009e

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 540
    .local v6, "accountTypeTextView":Landroid/widget/TextView;
    const v14, 0x7f0b009f

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 541
    .local v3, "accountNameTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090156

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    .end local v2    # "accountIcon":Landroid/widget/ImageView;
    .end local v3    # "accountNameTextView":Landroid/widget/TextView;
    .end local v5    # "accountTypeDisplayLabel":Ljava/lang/CharSequence;
    .end local v6    # "accountTypeTextView":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v14, :cond_5

    .line 553
    new-instance v14, Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v16, 0x109000a

    invoke-direct/range {v14 .. v16}, Lcom/android/contacts/group/SuggestedMemberListAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountType(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountName(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setDataSet(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v15, Lcom/android/contacts/group/GroupEditorFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 583
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v14, :cond_6

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    if-eqz v1, :cond_c

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 594
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    if-nez v14, :cond_d

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 595
    if-eqz v10, :cond_7

    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 598
    :cond_7
    sget-object v14, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 599
    return-void

    .line 492
    .end local v1    # "accountHeader":Landroid/view/View;
    .end local v8    # "editorView":Landroid/view/View;
    .end local v9    # "filters":[Landroid/text/InputFilter;
    .end local v11    # "newGroupEditorId":I
    :cond_8
    const v11, 0x7f04003f

    goto/16 :goto_0

    .line 505
    .restart local v11    # "newGroupEditorId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v15, "currentEditorForAccount"

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .line 506
    .restart local v8    # "editorView":Landroid/view/View;
    if-nez v8, :cond_1

    .line 507
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Group editor view not found"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 515
    .restart local v9    # "filters":[Landroid/text/InputFilter;
    :cond_a
    const v14, 0x7f0b00b9

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/group/GroupRingtoneEditorView;

    goto/16 :goto_1

    .line 526
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_2

    .line 588
    .restart local v1    # "accountHeader":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v15}, Landroid/widget/AutoCompleteTextView;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    goto :goto_3

    .line 594
    :cond_d
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    .prologue
    .line 316
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 319
    return-void
.end method

.method private updateRingtoneName(Landroid/net/Uri;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 424
    if-eqz p1, :cond_5

    .line 425
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 427
    .local v7, "isDefault":Z
    if-eqz v7, :cond_1

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneName:Ljava/lang/String;

    .line 429
    const/4 v0, 0x1

    .line 448
    .end local v7    # "isDefault":Z
    :cond_0
    :goto_0
    return v0

    .line 431
    .restart local v7    # "isDefault":Z
    :cond_1
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone uri->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v6, 0x0

    .line 434
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 435
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 436
    :cond_2
    const/4 v0, 0x3

    .line 442
    if-eqz v6, :cond_0

    .line 443
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 438
    :cond_3
    :try_start_1
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingtoneName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    const/4 v0, 0x2

    .line 442
    if-eqz v6, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_4
    throw v0

    .line 447
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "isDefault":Z
    :cond_5
    const-string v0, "GroupEditorFragment"

    const-string v1, "ringtone not set."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "groupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 604
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 605
    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 606
    return-void

    .line 604
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public loadMemberToAddToGroup(JLjava/lang/String;)V
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "contactId"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "rawContactId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 632
    const-string v1, "memberLookupUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 634
    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 405
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 407
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 409
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 417
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 245
    if-eqz p1, :cond_2

    .line 247
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 248
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 255
    :cond_2
    const-string v2, "android.intent.action.EDIT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 257
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    move-object v0, v3

    .line 260
    .local v0, "account":Landroid/accounts/Account;
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_5

    move-object v1, v3

    .line 263
    .local v1, "dataSet":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_6

    .line 265
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 266
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 258
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v0, v2

    goto :goto_1

    .line 260
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 271
    .restart local v1    # "dataSet":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->selectAccountAndCreateGroup()V

    goto :goto_0

    .line 274
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Action String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Only support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 281
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 287
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 236
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    .line 237
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 238
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    .line 239
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 651
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 652
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setHasOptionsMenu(Z)V

    .line 228
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 229
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    .line 230
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDoneClicked()V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->save()Z

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 668
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 666
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x7f0b0123
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 657
    const v1, 0x7f0b0123

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 659
    .local v0, "discardMenu":Landroid/view/MenuItem;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    return-void
.end method

.method public onSaveCompleted(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 779
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 780
    :goto_0
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveCompleted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz p1, :cond_0

    .line 782
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    const v2, 0x7f09013e

    :goto_1
    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 787
    :cond_0
    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 788
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 790
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 791
    const-string v2, "contacts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 793
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 794
    const-string v3, "content://contacts/groups"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 795
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 797
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 803
    :goto_2
    const/4 v1, -0x1

    .line 809
    :goto_3
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 810
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v2, v1, v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    .line 813
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 779
    goto :goto_0

    .line 782
    :cond_3
    const v2, 0x7f09013f

    goto :goto_1

    .line 800
    :cond_4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 806
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 328
    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 329
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "groupNameIsReadOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "customRingtone"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "originalRingtone"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOrigRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "customRingtoneChanged"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string v0, "membersToAdd"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 341
    const-string v0, "membersToRemove"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 342
    const-string v0, "membersToDisplay"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    return-void
.end method

.method public revert()Z
    .locals 1

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    .line 677
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 675
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0
.end method

.method public save()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 720
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f090226

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v9

    .line 775
    :goto_0
    return v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-eq v0, v2, :cond_2

    .line 725
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 726
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    :cond_1
    move v0, v1

    .line 729
    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 736
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->ringtoneChanged:Z

    if-nez v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    move v0, v9

    .line 738
    goto :goto_0

    .line 741
    :cond_3
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 745
    if-nez v0, :cond_4

    move v0, v1

    .line 746
    goto :goto_0

    .line 749
    :cond_4
    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 751
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v4

    .line 754
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 774
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v9

    .line 775
    goto :goto_0

    .line 760
    :cond_5
    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 762
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v5

    .line 765
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v6

    .line 768
    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "saveCompleted"

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 772
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent action type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 369
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 372
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .line 638
    return-void
.end method

.method public setStatus(Lcom/android/contacts/group/GroupEditorFragment$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/android/contacts/group/GroupEditorFragment$Status;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 223
    return-void
.end method
