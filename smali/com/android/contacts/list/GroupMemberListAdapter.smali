.class public Lcom/android/contacts/list/GroupMemberListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "GroupMemberListAdapter.java"


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mGroupId:J

.field private mMode:I

.field private target:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mGroupId:J

    .line 70
    iput-object p1, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->target:Landroid/app/Activity;

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->init(Landroid/content/Intent;)V

    .line 72
    :cond_0
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;J)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/list/GroupMemberListAdapter;->getSelectionForAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v2, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mGroupId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 183
    const-string v2, " AND _id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v2, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 193
    const-string v2, "GroupMemberListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected mode->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_1
    const-string v2, "( SELECT contact_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, " FROM view_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v2, " WHERE mimetype = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, "vnd.android.cursor.item/group_membership\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, " AND data1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mGroupId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 205
    const-string v2, "GroupMemberListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :pswitch_0
    const-string v2, " NOT IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    :pswitch_1
    const-string v2, " IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSelectionForAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "selection":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_0
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz p2, :cond_1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_type = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    :cond_0
    const-string v1, "account_name IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    const-string v1, "account_type IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 211
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 213
    .local v1, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    .line 219
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 231
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 232
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 239
    :goto_2
    return-void

    :cond_2
    move-object v0, v8

    .line 213
    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 237
    :cond_4
    invoke-virtual {v1, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    instance-of v3, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 98
    check-cast v3, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->shouldIncludeProfile()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 104
    const-string v1, ""

    .line 106
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 111
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/GroupMemberListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 112
    const-string v3, "0"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 138
    .end local v1    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getSortOrder()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 139
    const-string v2, "sort_key"

    .line 144
    .local v2, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 145
    return-void

    .line 114
    .end local v2    # "sortOrder":Ljava/lang/String;
    .restart local v1    # "query":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 115
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    const-string v3, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_3

    .line 119
    const-string v3, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->getDirectoryResultLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    :cond_3
    const-string v3, "snippet_args"

    const-string v4, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    const-string v3, "deferred_snippeting"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 126
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/GroupMemberListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->configureSelection(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 131
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "query":Ljava/lang/String;
    :cond_4
    const-string v3, "GroupMemberListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "directory id->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->configureUri(Landroid/content/CursorLoader;J)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/GroupMemberListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/GroupMemberListAdapter;->configureSelection(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 141
    :cond_5
    const-string v2, "sort_key_alt"

    .restart local v2    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 3
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 148
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v0, "uri":Landroid/net/Uri;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {v0}, Lcom/android/contacts/list/GroupMemberListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 153
    return-void
.end method

.method public getContactId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/GroupMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhotoUriString(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/GroupMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContactId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/GroupMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v3, "account_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "accountName":Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "accountType":Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "dataSet":Ljava/lang/String;
    new-instance v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 78
    const-string v3, "_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mGroupId:J

    .line 79
    const-string v3, "GroupMemberListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAccount->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGroupId->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mGroupId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/contacts/list/GroupMemberListAdapter;->mMode:I

    .line 84
    return-void
.end method
