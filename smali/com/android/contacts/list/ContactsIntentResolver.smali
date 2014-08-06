.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 53
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    new-instance v6, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v6}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 58
    .local v6, "request":Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    const-string v10, "ContactsIntentResolver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Called with action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v10, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 63
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 182
    :cond_0
    :goto_0
    const-string v10, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "title":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 184
    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 186
    :cond_1
    return-object v6

    .line 64
    .end local v8    # "title":Ljava/lang/String;
    :cond_2
    const-string v10, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 65
    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 66
    :cond_3
    const-string v10, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 67
    const/16 v10, 0x11

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 68
    :cond_4
    const-string v10, "android.intent.action.FROM_DIALER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 69
    const/16 v10, 0x13

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 70
    :cond_5
    const-string v10, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 71
    const/16 v10, 0x1e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 72
    :cond_6
    const-string v10, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 73
    const/16 v10, 0x28

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 74
    :cond_7
    const-string v10, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 75
    const/16 v10, 0x32

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 76
    :cond_8
    const-string v10, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 77
    const/16 v10, 0x14

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto :goto_0

    .line 79
    :cond_9
    const-string v10, "android.intent.action.PICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 80
    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "resolvedType":Ljava/lang/String;
    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 82
    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 83
    :cond_a
    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 84
    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 85
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v10, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 87
    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string v10, "vnd.android.cursor.dir/phone"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 89
    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 90
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 91
    :cond_d
    const-string v10, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 92
    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 93
    :cond_e
    const-string v10, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 94
    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 95
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 96
    :cond_f
    const-string v10, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 97
    const/16 v10, 0x69

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 99
    .end local v7    # "resolvedType":Ljava/lang/String;
    :cond_10
    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "component":Ljava/lang/String;
    const-string v10, "alias.DialShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 102
    const/16 v10, 0x78

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 103
    :cond_11
    const-string v10, "alias.MessageShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 104
    const/16 v10, 0x82

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 106
    :cond_12
    const/16 v10, 0x6e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 108
    .end local v1    # "component":Ljava/lang/String;
    :cond_13
    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "type":Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/contact"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 111
    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 112
    :cond_14
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 113
    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 114
    :cond_15
    const-string v10, "vnd.android.cursor.item/phone"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 115
    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 116
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 117
    :cond_16
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 118
    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 119
    :cond_17
    const-string v10, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 120
    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 121
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 122
    :cond_18
    const-string v10, "vnd.android.cursor.item/person"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 124
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 126
    .end local v9    # "type":Ljava/lang/String;
    :cond_19
    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 127
    const/16 v10, 0x50

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    goto/16 :goto_0

    .line 128
    :cond_1a
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 129
    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "query":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 133
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_1b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 136
    const-string v10, "email"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    :cond_1c
    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 139
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 140
    .end local v5    # "query":Ljava/lang/String;
    :cond_1d
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 141
    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .restart local v7    # "resolvedType":Ljava/lang/String;
    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 144
    :cond_1e
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 145
    const-string v10, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 148
    :cond_1f
    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 150
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 153
    .end local v7    # "resolvedType":Ljava/lang/String;
    :cond_20
    const-string v10, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 157
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 159
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_21

    .line 160
    const-string v10, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 162
    const-string v10, "originalRequest"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactsRequest;

    .line 164
    .local v4, "originalRequest":Lcom/android/contacts/list/ContactsRequest;
    if-eqz v4, :cond_21

    .line 165
    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 169
    .end local v4    # "originalRequest":Lcom/android/contacts/list/ContactsRequest;
    :cond_21
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 174
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_22
    const-string v10, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 176
    .local v2, "data":Landroid/net/Uri;
    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 177
    invoke-virtual {v6, v2}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 178
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
