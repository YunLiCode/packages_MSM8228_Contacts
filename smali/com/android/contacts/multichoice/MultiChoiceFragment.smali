.class public Lcom/android/contacts/multichoice/MultiChoiceFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "MultiChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mActionCode:I

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckedItems:Landroid/os/Bundle;

.field private mChoiceView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field protected mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchText:Ljava/lang/String;

.field private mSelectedItemsFormatter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment$1;-><init>(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment$2;-><init>(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiChoiceFragment;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->reloadData()V

    return-void
.end method

.method private assembleValues(JI)V
    .locals 20
    .param p1, "uniqueId"    # J
    .param p3, "position"    # I

    .prologue
    .line 586
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7db

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 589
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    .line 590
    .local v5, "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v11

    .line 591
    .local v11, "lookupKey":Ljava/lang/String;
    const-string v18, "lookup"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v5    # "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    .end local v11    # "lookupKey":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 651
    return-void

    .line 592
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isGroupMemberOp()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/GroupMemberListAdapter;

    .line 594
    .local v5, "adapter":Lcom/android/contacts/list/GroupMemberListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getRawContactId(I)J

    move-result-wide v15

    .line 595
    .local v15, "rawContactId":J
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v11

    .line 596
    .restart local v11    # "lookupKey":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getContactId(I)J

    move-result-wide v6

    .line 597
    .local v6, "contactId":J
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 598
    .local v9, "displayName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getPhotoUriString(I)Ljava/lang/String;

    move-result-object v14

    .line 599
    .local v14, "photoUri":Ljava/lang/String;
    const-string v18, "name_raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 600
    const-string v18, "lookup"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v18, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 602
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v18, "photo_thumb_uri"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    .end local v5    # "adapter":Lcom/android/contacts/list/GroupMemberListAdapter;
    .end local v6    # "contactId":J
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v11    # "lookupKey":Ljava/lang/String;
    .end local v14    # "photoUri":Ljava/lang/String;
    .end local v15    # "rawContactId":J
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 606
    .local v5, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 607
    .restart local v9    # "displayName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactId(I)J

    move-result-wide v6

    .line 608
    .restart local v6    # "contactId":J
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getEmailAddress(I)Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "emailAddress":Ljava/lang/String;
    const-string v18, "data4"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v18, "contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    const-string v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    .end local v5    # "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    .end local v6    # "contactId":J
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v10    # "emailAddress":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 614
    .local v5, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 615
    .restart local v9    # "displayName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactId(I)J

    move-result-wide v6

    .line 616
    .restart local v6    # "contactId":J
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, "phoneNumber":Ljava/lang/String;
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v18, "contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v5    # "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    .end local v6    # "contactId":J
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v13    # "phoneNumber":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    .line 622
    .local v5, "adapter":Lcom/android/contacts/list/PhoneAndEmailListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 623
    .restart local v9    # "displayName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContactId(I)J

    move-result-wide v6

    .line 624
    .restart local v6    # "contactId":J
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getDataValue(I)Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "dataValue":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getDataMimeType(I)Ljava/lang/String;

    move-result-object v12

    .line 626
    .local v12, "mimeType":Ljava/lang/String;
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v18, "contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 628
    const-string v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v18, "mimetype"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    .end local v5    # "adapter":Lcom/android/contacts/list/PhoneAndEmailListAdapter;
    .end local v6    # "contactId":J
    .end local v8    # "dataValue":Ljava/lang/String;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v12    # "mimeType":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7dc

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 632
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    .line 633
    .restart local v5    # "adapter":Lcom/android/contacts/list/PhoneAndEmailListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getDataValue(I)Ljava/lang/String;

    move-result-object v8

    .line 634
    .restart local v8    # "dataValue":Ljava/lang/String;
    const-string v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v5    # "adapter":Lcom/android/contacts/list/PhoneAndEmailListAdapter;
    .end local v8    # "dataValue":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7dd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 637
    .local v5, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getEmailAddress(I)Ljava/lang/String;

    move-result-object v10

    .line 638
    .restart local v10    # "emailAddress":Ljava/lang/String;
    const-string v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .end local v5    # "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    .end local v10    # "emailAddress":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    move/from16 v18, v0

    const/16 v19, 0x7d9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 641
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    .line 642
    .local v5, "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 643
    .restart local v9    # "displayName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getAccountName(I)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "accountName":Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getAccountType(I)Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "accountType":Ljava/lang/String;
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v18, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private genShareVCardUri()Landroid/net/Uri;
    .locals 9

    .prologue
    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v3, "lookupKeyBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 657
    .local v0, "contactId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 658
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "lookup"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "lookupKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 660
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 661
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 665
    :cond_1
    sget-object v6, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid contactId with empty lookupKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v2    # "lookupKey":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_2
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 672
    .local v4, "multiVCardUri":Landroid/net/Uri;
    sget-object v6, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multiVCardUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-object v4
.end method

.method private isGroupMemberOp()Z
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7de

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickContacts()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickEmail()Z
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickMemberData()Z
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickPhone()Z
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickPhoneAndEmail()Z
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTooManySelected(I)Z
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreFilter()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 565
    return-void
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 569
    return-void
.end method

.method private setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    :cond_2
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 581
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->saveFilter()V

    .line 582
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->reloadData()V

    goto :goto_0
.end method

.method private setGroupResult()V
    .locals 15

    .prologue
    .line 677
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v8, "groupMembers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v13, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 679
    .local v11, "s":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 680
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "name_raw_contact_id"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 681
    .local v1, "rawContactId":J
    const-string v13, "lookup"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "lookupKey":Ljava/lang/String;
    const-string v13, "_id"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 683
    .local v4, "contactId":J
    const-string v13, "display_name"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "displayName":Ljava/lang/String;
    const-string v13, "photo_thumb_uri"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "photoUri":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 688
    .local v0, "member":Lcom/android/contacts/group/GroupEditorFragment$Member;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v0    # "member":Lcom/android/contacts/group/GroupEditorFragment$Member;
    .end local v1    # "rawContactId":J
    .end local v3    # "lookupKey":Ljava/lang/String;
    .end local v4    # "contactId":J
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "photoUri":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v10, "intent":Landroid/content/Intent;
    const-string v13, "group_members"

    invoke-virtual {v10, v13, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 694
    return-void
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 493
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isAccountFilterEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "shouldShowHeader":Z
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v0

    .line 508
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateListCheckState(Z)V
    .locals 5
    .param p1, "selectAll"    # Z

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 445
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 446
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->assembleValues(JI)V

    .line 446
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView(I)V

    .line 455
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 263
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 264
    invoke-super {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 265
    invoke-super {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 268
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 269
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 270
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 271
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 272
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 273
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 274
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, "headerTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 282
    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 286
    .end local v1    # "headerTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 209
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createListAdapter("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    new-instance v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/app/Activity;)V

    .line 244
    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    :cond_0
    :goto_0
    if-nez v0, :cond_8

    .line 245
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "[createListAdapter] adapter = null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isGroupMemberOp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    new-instance v0, Lcom/android/contacts/list/GroupMemberListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/list/GroupMemberListAdapter;-><init>(Landroid/app/Activity;)V

    .line 215
    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move-object v3, v0

    .line 217
    check-cast v3, Lcom/android/contacts/list/GroupMemberListAdapter;

    invoke-virtual {v3, v8}, Lcom/android/contacts/list/GroupMemberListAdapter;->setMode(I)V

    goto :goto_0

    :sswitch_1
    move-object v3, v0

    .line 222
    check-cast v3, Lcom/android/contacts/list/GroupMemberListAdapter;

    invoke-virtual {v3, v7}, Lcom/android/contacts/list/GroupMemberListAdapter;->setMode(I)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickEmail()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    goto :goto_0

    .line 228
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhoneAndEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    new-instance v0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    goto :goto_0

    .line 232
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickMemberData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 234
    .local v1, "groupId":J
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v4, 0x7dc

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v4, 0x7d6

    if-ne v3, v4, :cond_7

    .line 236
    :cond_6
    new-instance v0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    move-object v3, v0

    .line 237
    check-cast v3, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->setGroupId(J)V

    goto/16 :goto_0

    .line 239
    :cond_7
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    move-object v3, v0

    .line 240
    check-cast v3, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setGroupId(J)V

    goto/16 :goto_0

    .line 248
    .end local v1    # "groupId":J
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isAccountFilterEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickEmail()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhone()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhoneAndEmail()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 250
    :cond_9
    const/4 v3, -0x2

    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 253
    :cond_a
    invoke-virtual {v0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 254
    invoke-virtual {v0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 255
    invoke-virtual {v0, v8}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 256
    invoke-virtual {v0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 257
    invoke-virtual {v0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 258
    return-object v0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_1
        0x7de -> :sswitch_1
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    return v0
.end method

.method public getCheckedItems()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isAccountFilterClickable()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected isAccountFilterEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 512
    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7d5

    if-eq v1, v2, :cond_0

    .line 523
    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7dd

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v2, 0x7dc

    if-eq v1, v2, :cond_0

    .line 528
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView()V

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 128
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 403
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 411
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 413
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateFilterHeaderView()V

    .line 414
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isAccountFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->restoreFilter()V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public onClearSelect()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateListCheckState(Z)V

    .line 317
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isAccountFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isAccountFilterClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateFilterHeaderView()V

    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mChoiceView:Landroid/view/View;

    .line 154
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickContacts()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isGroupMemberOp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickMemberData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhoneAndEmail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/common/list/LetterListView;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/LetterListView;

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 160
    :cond_2
    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDetach()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 292
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    const-string v1, "onItemClick(2)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 298
    .local v0, "isChecked":Z
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick(4): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 300
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView(I)V

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, p4, p5, p3}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->assembleValues(JI)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 168
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f09003e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 176
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 191
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 192
    .local v1, "checkedCount":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 193
    .local v2, "dataCount":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 194
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 196
    .local v4, "uniqueId":J
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 197
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 193
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 172
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "checkedCount":I
    .end local v2    # "dataCount":I
    .end local v3    # "position":I
    .end local v4    # "uniqueId":J
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f090136

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 182
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 200
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "checkedCount":I
    .restart local v2    # "dataCount":I
    .restart local v3    # "position":I
    .restart local v4    # "uniqueId":J
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_3

    .line 203
    .end local v4    # "uniqueId":J
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView(I)V

    .line 204
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateFilterHeaderView()V

    .line 205
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionAction()V
    .locals 12

    .prologue
    const/16 v11, 0x7d2

    const/16 v10, 0x1f4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 321
    sget-object v4, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionAction("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v4, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCheckedItems.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0901ad

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 372
    :goto_0
    return-void

    .line 327
    :cond_0
    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    if-eq v4, v11, :cond_1

    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v5, 0x7db

    if-eq v4, v5, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickMemberData()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhoneAndEmail()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickEmail()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickPhone()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0, v10}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isTooManySelected(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0901ae

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    :cond_2
    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    if-ne v4, v11, :cond_4

    .line 338
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "text/x-vcard"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v4, "android.intent.extra.STREAM"

    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->genShareVCardUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    const v4, 0x7f09014d

    invoke-virtual {p0, v4}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 343
    .local v1, "chooseTitle":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 346
    .local v0, "chooseIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 347
    .restart local v0    # "chooseIntent":Landroid/content/Intent;
    .restart local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0900c9

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 350
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_5

    .line 351
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 352
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->genShareVCardUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 354
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isGroupMemberOp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 355
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setGroupResult()V

    goto :goto_1

    .line 356
    :cond_6
    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v5, 0x7d3

    if-ne v4, v5, :cond_7

    .line 357
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 358
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 360
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v5, 0x7d4

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_9

    .line 362
    :cond_8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 363
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "result"

    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 365
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isPickMemberData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 367
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "result"

    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    const-string v0, "checked_items"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 387
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    return-void
.end method

.method public onSelectAll()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateListCheckState(Z)V

    .line 312
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 393
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string v0, "checked_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    .line 398
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mActionCode:I

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setRetainInstance(Z)V

    .line 85
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const/4 p1, 0x0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 426
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    if-nez p1, :cond_2

    .line 427
    if-eqz v0, :cond_1

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->reloadData()V

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    .line 435
    if-eqz v0, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 437
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->reloadData()V

    goto :goto_0
.end method

.method public updateSelectedItemsView()V
    .locals 8

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 480
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 481
    .local v1, "checkedCount":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 482
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 483
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 484
    .local v4, "uniqueId":J
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    add-int/lit8 v1, v1, 0x1

    .line 482
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    .end local v4    # "uniqueId":J
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView(I)V

    .line 490
    return-void
.end method

.method public updateSelectedItemsView(I)V
    .locals 5
    .param p1, "checkedCount"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 464
    .local v0, "selectedItemsView":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 465
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load view resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 469
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load string resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
