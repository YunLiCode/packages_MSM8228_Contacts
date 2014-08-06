.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsForceWithNumber:Z

.field private mIsStrictSearchMode:Z

.field private mTarget:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsStrictSearchMode:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsForceWithNumber:Z

    .line 67
    iput-object p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mTarget:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method private appendUriQueryParameterWithoutSim(Landroid/content/CursorLoader;Ljava/lang/String;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "no_sim"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const/4 v5, 0x0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.intent.action.ATTACH_DATA"

    iget-object v3, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "super_action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "account_type!=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, "com.android.sim"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 226
    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz p4, :cond_0

    .line 234
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 238
    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 271
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 272
    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 252
    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :pswitch_4
    const-string v2, "com.android.sim"

    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Landroid/content/CursorLoader;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
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

    .line 277
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 279
    .local v1, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    .line 285
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 298
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 299
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindAccountType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 306
    :goto_2
    return-void

    :cond_2
    move-object v0, v8

    .line 279
    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 304
    :cond_4
    invoke-virtual {v1, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 11
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 101
    instance-of v6, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 102
    check-cast v6, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 106
    .local v1, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "query":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 109
    const-string v3, ""

    .line 111
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 116
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 117
    const-string v6, "0"

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 154
    .end local v3    # "query":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 155
    .local v2, "isAirMode":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_a

    const/4 v6, -0x7

    iget v7, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v6, v7, :cond_a

    .line 156
    :cond_2
    const-string v6, "com.android.sim"

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Landroid/content/CursorLoader;Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v6

    if-ne v6, v10, :cond_c

    .line 167
    const-string v5, "sort_key"

    .line 172
    .local v5, "sortOrder":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isForceWithNumber()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "selection":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "has_phone_number=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 184
    .end local v4    # "selection":Ljava/lang/String;
    :cond_4
    return-void

    .line 119
    .end local v2    # "isAirMode":Z
    .end local v5    # "sortOrder":Ljava/lang/String;
    .restart local v3    # "query":Ljava/lang/String;
    :cond_5
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 120
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const-string v6, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_6

    .line 124
    const-string v6, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    :cond_6
    const-string v6, "snippet_args"

    const-string v7, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    const-string v6, "deferred_snippeting"

    const-string v7, "1"

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    sget-object v6, Lcom/android/contacts/common/list/DefaultContactListAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configureLoader] useStrictSearchMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsStrictSearchMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v6, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsStrictSearchMode:Z

    if-eqz v6, :cond_8

    .line 133
    sget-object v6, Lcom/android/contacts/common/list/DefaultContactListAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configureLoader] filter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v1, :cond_7

    iget v6, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v7, -0x3

    if-eq v6, v7, :cond_7

    iget v6, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v7, -0x6

    if-eq v6, v7, :cond_7

    .line 138
    iget v6, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v6, :cond_7

    .line 139
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 142
    :cond_7
    sget-object v6, Lcom/android/contacts/common/list/DefaultContactListAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configureLoader] uri.builder = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 146
    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "query":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 150
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_0

    .line 157
    .restart local v2    # "isAirMode":Z
    :cond_a
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-static {v9}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isSimDeactivated(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 159
    const-string v6, "SIM1"

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Landroid/content/CursorLoader;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_b
    invoke-static {v10}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isSimDeactivated(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    const-string v6, "SIM2"

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Landroid/content/CursorLoader;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :cond_c
    const-string v5, "sort_key_alt"

    .restart local v5    # "sortOrder":Ljava/lang/String;
    goto/16 :goto_2

    .line 179
    .restart local v4    # "selection":Ljava/lang/String;
    :cond_d
    const-string v4, ""

    goto/16 :goto_3
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    .line 187
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 191
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 197
    .end local v1    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 205
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 206
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 208
    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 209
    invoke-virtual {p4, v0}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 211
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 214
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 215
    return-void

    .line 193
    .restart local v1    # "lookupKey":Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public isForceWithNumber()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsForceWithNumber:Z

    return v0
.end method

.method public setForceWithNumber(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsForceWithNumber:Z

    .line 93
    return-void
.end method

.method public setStrictSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsStrictSearchMode:Z

    .line 85
    return-void
.end method
