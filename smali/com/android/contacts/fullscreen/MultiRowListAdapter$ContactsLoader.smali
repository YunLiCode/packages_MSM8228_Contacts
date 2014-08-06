.class Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;
.super Landroid/os/AsyncTask;
.source "MultiRowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/fullscreen/MultiRowListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/fullscreen/MultiRowLineInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)V
    .locals 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;
    .param p2, "x1"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;-><init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)V

    return-void
.end method

.method private assemblingResult(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/fullscreen/MultiRowLineInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/fullscreen/MultiRowLineInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$400(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_7

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "holder":Lcom/android/contacts/fullscreen/MultiRowLineInfo;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$300(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v1

    aget v1, v1, v6

    if-ge v7, v1, :cond_6

    .line 215
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 216
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 217
    .local v2, "contactId":J
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "lookupKey":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "displayName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->UNKNOWN_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$900(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 222
    :cond_0
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    rem-int/lit8 v1, v7, 0x3

    if-nez v1, :cond_1

    .line 224
    new-instance v0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;

    .end local v0    # "holder":Lcom/android/contacts/fullscreen/MultiRowLineInfo;
    invoke-direct {v0}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;-><init>()V

    .line 226
    .restart local v0    # "holder":Lcom/android/contacts/fullscreen/MultiRowLineInfo;
    :cond_1
    if-nez v7, :cond_2

    if-eqz v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$200(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->setmSectionHeader(Ljava/lang/String;)V

    .line 229
    :cond_2
    if-eqz v0, :cond_3

    .line 230
    rem-int/lit8 v1, v7, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->addInfo(IJLjava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "holder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    add-int/lit8 v1, v7, 0x1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$300(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    if-ne v7, v1, :cond_5

    .line 234
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v8, "-add new MultiRowLineInfo-"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 212
    .end local v2    # "contactId":J
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v5    # "lookupKey":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 239
    .end local v0    # "holder":Lcom/android/contacts/fullscreen/MultiRowLineInfo;
    .end local v7    # "j":I
    :cond_7
    return-void
.end method

.method private getContactUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 188
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    .local v0, "contactUri":Landroid/net/Uri$Builder;
    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # invokes: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->isAirPlaneMode()Z
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$800(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "no_sim"

    const-string v2, "com.android.sim"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private reComputeSectionCounts([I)V
    .locals 3
    .param p1, "oldSectionCounts"    # [I

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v1, v2}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$402(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I

    .line 209
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    array-length v2, p1

    new-array v2, v2, [I

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v1, v2}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$402(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$400(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v1

    aget v2, p1, v0

    div-int/lit8 v2, v2, 0x3

    aput v2, v1, v0

    .line 205
    aget v1, p1, v0

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$400(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/fullscreen/MultiRowLineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v8, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/fullscreen/MultiRowLineInfo;>;"
    const/4 v7, 0x0

    .line 151
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$500(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 170
    :cond_0
    if-eqz v7, :cond_1

    .line 171
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return-object v8

    .line 156
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 157
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    const-string v0, "address_book_index_counts"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    :cond_3
    if-eqz v7, :cond_1

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    const-string v1, "address_book_index_titles"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$202(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[Ljava/lang/String;)[Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    const-string v1, "address_book_index_counts"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$302(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I

    .line 162
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$300(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->reComputeSectionCounts([I)V

    .line 163
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSectionTitles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$200(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRealSectionCounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v2}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$300(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSectionCounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v2}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$400(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v7, v8}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->assemblingResult(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    if-eqz v7, :cond_1

    goto/16 :goto_0

    .end local v6    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_5
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/fullscreen/MultiRowLineInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/fullscreen/MultiRowLineInfo;>;"
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$700(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$700(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->notifyDataSetChanged()V

    .line 182
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$100(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$100(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$700(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;->onQueryComplete(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$202(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I
    invoke-static {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$302(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I

    .line 143
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # setter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I
    invoke-static {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$402(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I

    .line 144
    return-void
.end method
