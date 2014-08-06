.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private m2AlternateIconDescriptionRes:I

.field private m2AlternateIconRes:I

.field private m2AlternateIntent:Landroid/content/Intent;

.field private mAlternateIconDescriptionRes:I

.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mPresence:I

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/contacts/model/dataitem/DataItem;
    .param p3, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 80
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 84
    const-string v34, ""

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual/range {p2 .. p3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 86
    invoke-virtual/range {p2 .. p3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v30

    .line 89
    .local v30, "typeValue":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 90
    .local v29, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 91
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v34, v0

    if-nez v34, :cond_5

    .line 93
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 103
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v29    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v30    # "typeValue":I
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 104
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 107
    sget-object v34, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    move-wide/from16 v35, v0

    invoke-static/range {v34 .. v36}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v10

    .line 110
    .local v10, "hasPhone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v11

    .line 113
    .local v11, "hasSms":Z
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_f

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_3

    move-object/from16 v21, p2

    .line 115
    check-cast v21, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 116
    .local v21, "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 117
    .local v20, "number":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 119
    if-eqz v10, :cond_6

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 121
    .local v22, "phoneIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v11, :cond_7

    new-instance v27, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    const-string v35, "smsto"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v27, "smsIntent":Landroid/content/Intent;
    :goto_2
    const/16 v28, 0x0

    .line 124
    .local v28, "thirdIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v34

    if-eqz v34, :cond_8

    .line 125
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/common/CallUtil;->getVTCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    .line 130
    :cond_2
    :goto_3
    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    .line 131
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 132
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 133
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 134
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    .line 135
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIntent:Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v34

    if-eqz v34, :cond_9

    const v34, 0x7f020024

    :goto_4
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconRes:I

    .line 139
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v34

    if-eqz v34, :cond_a

    const v34, 0x7f0900f3

    :goto_5
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconDescriptionRes:I

    .line 250
    .end local v20    # "number":Ljava/lang/String;
    .end local v21    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v22    # "phoneIntent":Landroid/content/Intent;
    .end local v27    # "smsIntent":Landroid/content/Intent;
    .end local v28    # "thirdIntent":Landroid/content/Intent;
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v34, v0

    if-nez v34, :cond_4

    .line 252
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v34, v0

    const/high16 v35, 0x80000

    invoke-virtual/range {v34 .. v35}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    return-void

    .line 96
    .end local v10    # "hasPhone":Z
    .end local v11    # "hasSms":Z
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v29    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .restart local v30    # "typeValue":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 119
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v29    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v30    # "typeValue":I
    .restart local v10    # "hasPhone":Z
    .restart local v11    # "hasSms":Z
    .restart local v20    # "number":Ljava/lang/String;
    .restart local v21    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 121
    .restart local v22    # "phoneIntent":Landroid/content/Intent;
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 126
    .restart local v27    # "smsIntent":Landroid/content/Intent;
    .restart local v28    # "thirdIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/common/util/FeatureQuery;->isIPCallEnabled(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 127
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/common/CallUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    goto/16 :goto_3

    .line 136
    :cond_9
    const v34, 0x7f02003a

    goto :goto_4

    .line 139
    :cond_a
    const v34, 0x7f0900f4

    goto :goto_5

    .line 142
    :cond_b
    if-eqz v10, :cond_e

    .line 143
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 144
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIntent:Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v34

    if-eqz v34, :cond_c

    const v34, 0x7f020024

    :goto_7
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconRes:I

    .line 148
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v34

    if-eqz v34, :cond_d

    const v34, 0x7f0900f3

    :goto_8
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconDescriptionRes:I

    goto/16 :goto_6

    .line 145
    :cond_c
    const v34, 0x7f02003a

    goto :goto_7

    .line 148
    :cond_d
    const v34, 0x7f0900f4

    goto :goto_8

    .line 151
    :cond_e
    if-eqz v11, :cond_3

    .line 152
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 156
    .end local v20    # "number":Ljava/lang/String;
    .end local v21    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v22    # "phoneIntent":Landroid/content/Intent;
    .end local v27    # "smsIntent":Landroid/content/Intent;
    .end local v28    # "thirdIntent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_3

    move-object/from16 v26, p2

    .line 158
    check-cast v26, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    .line 159
    .local v26, "sip":Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    invoke-virtual/range {v26 .. v26}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 161
    const-string v34, "sip"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 162
    .local v5, "callUri":Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 171
    .end local v3    # "address":Ljava/lang/String;
    .end local v5    # "callUri":Landroid/net/Uri;
    .end local v26    # "sip":Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    :cond_10
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    move-object/from16 v9, p2

    .line 172
    check-cast v9, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 173
    .local v9, "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-virtual {v9}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 175
    const-string v34, "mailto"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 176
    .local v19, "mailUri":Landroid/net/Uri;
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.SENDTO"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 179
    .end local v3    # "address":Ljava/lang/String;
    .end local v9    # "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v19    # "mailUri":Landroid/net/Uri;
    :cond_11
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_12

    move-object/from16 v33, p2

    .line 180
    check-cast v33, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    .line 181
    .local v33, "website":Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v31

    .line 182
    .local v31, "url":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 188
    :try_start_0
    new-instance v32, Landroid/net/WebAddress;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 189
    .local v32, "webAddress":Landroid/net/WebAddress;
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    invoke-virtual/range {v32 .. v32}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 190
    .end local v32    # "webAddress":Landroid/net/WebAddress;
    :catch_0
    move-exception v8

    .line 191
    .local v8, "e":Landroid/net/ParseException;
    const-string v34, "DataAction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "malformed website: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 195
    .end local v8    # "e":Landroid/net/ParseException;
    .end local v31    # "url":Ljava/lang/String;
    .end local v33    # "website":Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    :cond_12
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_1b

    move-object/from16 v14, p2

    .line 196
    check-cast v14, Lcom/android/contacts/model/dataitem/ImDataItem;

    .line 197
    .local v14, "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v17

    .line 198
    .local v17, "isEmail":Z
    if-nez v17, :cond_13

    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v34

    if-eqz v34, :cond_3

    .line 199
    :cond_13
    if-eqz v17, :cond_17

    const/16 v25, 0x5

    .line 201
    .local v25, "protocol":I
    :goto_9
    if-eqz v17, :cond_14

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const/16 v35, 0x5

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 206
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 209
    :cond_14
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "host":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "data":Ljava/lang/String;
    const/16 v34, -0x1

    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    .line 213
    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    :cond_15
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 217
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "authority":Ljava/lang/String;
    new-instance v34, Landroid/net/Uri$Builder;

    invoke-direct/range {v34 .. v34}, Landroid/net/Uri$Builder;-><init>()V

    const-string v35, "imto"

    invoke-virtual/range {v34 .. v35}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 220
    .local v15, "imUri":Landroid/net/Uri;
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.SENDTO"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 224
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v6

    .line 225
    .local v6, "chatCapability":I
    and-int/lit8 v34, v6, 0x4

    if-eqz v34, :cond_18

    const/16 v18, 0x1

    .line 227
    .local v18, "isVideoChatCapable":Z
    :goto_a
    and-int/lit8 v34, v6, 0x1

    if-eqz v34, :cond_19

    const/16 v16, 0x1

    .line 229
    .local v16, "isAudioChatCapable":Z
    :goto_b
    if-nez v18, :cond_16

    if-eqz v16, :cond_3

    .line 230
    :cond_16
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.SENDTO"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "xmpp:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "?call"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 232
    if-eqz v18, :cond_1a

    .line 233
    const v34, 0x7f020078

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 234
    const v34, 0x7f090150

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_6

    .line 199
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v15    # "imUri":Landroid/net/Uri;
    .end local v16    # "isAudioChatCapable":Z
    .end local v18    # "isVideoChatCapable":Z
    .end local v25    # "protocol":I
    :cond_17
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_9

    .line 225
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "chatCapability":I
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v15    # "imUri":Landroid/net/Uri;
    .restart local v25    # "protocol":I
    :cond_18
    const/16 v18, 0x0

    goto :goto_a

    .line 227
    .restart local v18    # "isVideoChatCapable":Z
    :cond_19
    const/16 v16, 0x0

    goto :goto_b

    .line 236
    .restart local v16    # "isAudioChatCapable":Z
    :cond_1a
    const v34, 0x7f020077

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 237
    const v34, 0x7f09014f

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_6

    .line 242
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v14    # "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v15    # "imUri":Landroid/net/Uri;
    .end local v16    # "isAudioChatCapable":Z
    .end local v17    # "isEmail":Z
    .end local v18    # "isVideoChatCapable":Z
    .end local v25    # "protocol":I
    :cond_1b
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_3

    move-object/from16 v23, p2

    .line 243
    check-cast v23, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    .line 244
    .local v23, "postal":Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v24

    .line 245
    .local v24, "postalAddress":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 246
    invoke-static/range {v24 .. v24}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)V
    .locals 0
    .param p1, "other"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 347
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)V

    return-void
.end method

.method public get2AlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public get2AlternateIconDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 325
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIconDescriptionRes:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/DataAction;->getBody()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public get2AlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->m2AlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 300
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 308
    :goto_0
    return-object v2

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 303
    .local v1, "resourcePackageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 308
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setPresence(I)V
    .locals 0
    .param p1, "presence"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 266
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .param p1, "t"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v1, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 355
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 358
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 359
    .local v0, "that":Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
