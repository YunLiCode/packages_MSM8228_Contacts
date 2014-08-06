.class public Lcom/android/contacts/list/JoinContactLoader;
.super Landroid/content/CursorLoader;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
    }
.end annotation


# instance fields
.field private mProjection:[Ljava/lang/String;

.field private mSuggestionUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getRawContactsCountMap()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v8

    .line 103
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v8, "countMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 106
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const-string v3, "account_type!=\'com.android.sim\' AND deleted=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    :goto_1
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 114
    .local v6, "contactId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 119
    .local v10, "orgSum":I
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 122
    .end local v6    # "contactId":J
    .end local v10    # "orgSum":I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 123
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    throw v0

    .line 117
    .restart local v6    # "contactId":J
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "orgSum":I
    goto :goto_2

    .line 122
    .end local v6    # "contactId":J
    .end local v10    # "orgSum":I
    :cond_4
    if-eqz v9, :cond_0

    .line 123
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 89
    .local v7, "suggestionsCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/android/contacts/list/JoinContactLoader;->getRawContactsCountMap()Ljava/util/HashMap;

    move-result-object v6

    .line 90
    .local v6, "rawContactsCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1, v7, v6}, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSuggestionUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    .line 75
    return-void
.end method
