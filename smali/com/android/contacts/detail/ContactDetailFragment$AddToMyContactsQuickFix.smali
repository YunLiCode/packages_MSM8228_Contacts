.class Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToMyContactsQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 2194
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 2194
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 17

    .prologue
    .line 2243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v10

    .line 2246
    .local v10, "defaultGroupId":J
    const-wide/16 v3, -0x1

    cmp-long v1, v10, v3

    if-nez v1, :cond_0

    .line 2266
    :goto_0
    return-void

    .line 2249
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v2

    .line 2250
    .local v2, "contactDeltaList":Lcom/android/contacts/model/RawContactDeltaList;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/RawContactDelta;

    .line 2252
    .local v15, "rawContactEntityDelta":Lcom/android/contacts/model/RawContactDelta;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v9

    .line 2253
    .local v9, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v15, v9}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v16

    .line 2254
    .local v16, "type":Lcom/android/contacts/common/model/account/AccountType;
    const-string v1, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 2256
    .local v13, "groupMembershipKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-static {v15, v13}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    .line 2258
    .local v12, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v12, v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v14

    .line 2265
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2198
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return v11

    .line 2201
    :cond_1
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2204
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v12

    if-ne v12, v10, :cond_0

    .line 2207
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 2210
    .local v5, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-eqz v5, :cond_0

    .line 2213
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v12, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v1

    .line 2214
    .local v1, "defaultGroupId":J
    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-eqz v12, :cond_0

    .line 2216
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContact;

    .line 2217
    .local v8, "rawContact":Lcom/android/contacts/model/RawContact;
    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v9

    .line 2219
    .local v9, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2222
    const/4 v7, 0x0

    .line 2223
    .local v7, "isInDefaultGroup":Z
    invoke-virtual {v8}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v12

    const-class v13, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    invoke-static {v12, v13}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .local v0, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    move-object v4, v0

    .line 2225
    check-cast v4, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 2226
    .local v4, "groupMembership":Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    invoke-virtual {v4}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2227
    .local v3, "groupId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v1

    if-nez v12, :cond_2

    .line 2228
    const/4 v7, 0x1

    .line 2233
    .end local v0    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    .end local v3    # "groupId":Ljava/lang/Long;
    .end local v4    # "groupMembership":Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    :cond_3
    if-nez v7, :cond_4

    :goto_1
    move v11, v10

    goto/16 :goto_0

    :cond_4
    move v10, v11

    goto :goto_1
.end method
