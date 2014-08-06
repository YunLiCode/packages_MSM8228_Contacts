.class public Lcom/android/contacts/external/DeleteDuplicatedService;
.super Landroid/app/IntentService;
.source "DeleteDuplicatedService.java"


# static fields
.field private static mProcessing:Z


# instance fields
.field private mAccountManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mDuplicates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/HashRawContact;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNotifier:Landroid/app/NotificationManager;

.field private mRawContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/HashRawContact;",
            ">;"
        }
    .end annotation
.end field

.field private mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

.field private mStatus:I

.field private mTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/external/DeleteDuplicatedService;->mProcessing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "DeleteDuplicatedContacts"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    iput v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    .line 52
    iput v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mStatus:I

    .line 65
    iput v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mMode:I

    .line 83
    return-void
.end method

.method private buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 349
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const-string v0, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const/high16 v0, 0x14000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 355
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const v4, 0x7f09021b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x7f020041

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 357
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 360
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 361
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 363
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 353
    goto :goto_0
.end method

.method private check(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 198
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    if-nez v11, :cond_2

    .line 199
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    .line 205
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_3

    .line 206
    :cond_0
    const-string v11, "DeleteDuplicatedContacts"

    const-string v12, "No duplicated found"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->finishOneAccount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_1
    if-eqz p1, :cond_1

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_1
    return-void

    .line 201
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 209
    :cond_3
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 210
    .local v6, "count":I
    const-string v11, "DeleteDuplicatedContacts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    const-wide/16 v7, -0x1

    .line 213
    .local v7, "curId":J
    const/4 v0, 0x0

    .line 214
    .local v0, "hashRaw":Lcom/android/contacts/model/HashRawContact;
    :cond_4
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 215
    const-string v11, "raw_contact_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 216
    .local v1, "id":J
    const-string v11, "display_name"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/String;
    const-string v11, "contact_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 218
    .local v4, "contactId":J
    const-string v11, "hash_code"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 219
    .local v9, "hash":J
    cmp-long v11, v1, v7

    if-eqz v11, :cond_6

    .line 220
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/contacts/model/HashRawContact;->isValid()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 221
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_5
    move-wide v7, v1

    .line 224
    new-instance v0, Lcom/android/contacts/model/HashRawContact;

    .end local v0    # "hashRaw":Lcom/android/contacts/model/HashRawContact;
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/HashRawContact;-><init>(JLjava/lang/String;J)V

    .line 226
    .restart local v0    # "hashRaw":Lcom/android/contacts/model/HashRawContact;
    :cond_6
    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {v0, v9, v10}, Lcom/android/contacts/model/HashRawContact;->addData(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 237
    .end local v0    # "hashRaw":Lcom/android/contacts/model/HashRawContact;
    .end local v1    # "id":J
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "contactId":J
    .end local v6    # "count":I
    .end local v7    # "curId":J
    .end local v9    # "hash":J
    :catchall_0
    move-exception v11

    if-eqz p1, :cond_7

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_7
    throw v11

    .line 230
    .restart local v0    # "hashRaw":Lcom/android/contacts/model/HashRawContact;
    .restart local v6    # "count":I
    .restart local v7    # "curId":J
    :cond_8
    if-eqz v0, :cond_9

    :try_start_2
    invoke-virtual {v0}, Lcom/android/contacts/model/HashRawContact;->isValid()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 231
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->compare()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private compare()V
    .locals 9

    .prologue
    .line 243
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 244
    .local v5, "total":I
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 245
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    .line 249
    :goto_0
    const-string v6, "DeleteDuplicatedContacts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total raw contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/HashRawContact;>;"
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 253
    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 252
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v4    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/HashRawContact;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 256
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v4    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/HashRawContact;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 257
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/HashRawContact;>;"
    const-string v7, "DeleteDuplicatedContacts"

    aget-object v6, v0, v2

    check-cast v6, Lcom/android/contacts/model/HashRawContact;

    invoke-virtual {v6}, Lcom/android/contacts/model/HashRawContact;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/HashRawContact;

    .line 261
    .local v1, "cur":Lcom/android/contacts/model/HashRawContact;
    aget-object v6, v0, v2

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 262
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 266
    .end local v1    # "cur":Lcom/android/contacts/model/HashRawContact;
    :cond_3
    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/HashRawContact;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 270
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->delete()V

    .line 271
    return-void
.end method

.method private delete()V
    .locals 15

    .prologue
    .line 306
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mStatus:I

    .line 307
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    .local v0, "duplicates":I
    const-string v11, "DeleteDuplicatedContacts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start delete, total "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const v11, 0x7f09021e

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDisplayName:Ljava/lang/CharSequence;

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/contacts/external/DeleteDuplicatedService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "notifText":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {p0, v5, v11}, Lcom/android/contacts/external/DeleteDuplicatedService;->buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v6

    .line 311
    .local v6, "notification":Landroid/app/Notification;
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mNotifier:Landroid/app/NotificationManager;

    const/16 v12, 0x400

    invoke-virtual {v11, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    const-string v11, "com.android.sim"

    iget-object v12, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 314
    .local v9, "simContact":Z
    if-eqz v9, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->isSimAccountWritable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->finishOneAccount()V

    .line 346
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v11, Lcom/android/contacts/common/util/SimContactsOperation;

    iget-object v12, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/contacts/common/util/SimContactsOperation;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    .line 322
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 324
    .local v4, "index":I
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/HashRawContact;

    .line 325
    .local v7, "rawContact":Lcom/android/contacts/model/HashRawContact;
    invoke-virtual {v7}, Lcom/android/contacts/model/HashRawContact;->getRawContactId()J

    move-result-wide v2

    .line 326
    .local v2, "id":J
    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lcom/android/contacts/model/HashRawContact;->getContactId()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/android/contacts/external/DeleteDuplicatedService;->deleteSimContact(J)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 327
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/16 v11, 0x14

    if-lt v4, v11, :cond_2

    .line 330
    iget v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/contacts/external/DeleteDuplicatedService;->deleteOnce(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    .line 331
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 332
    const/4 v4, 0x0

    goto :goto_1

    .line 335
    .end local v2    # "id":J
    .end local v7    # "rawContact":Lcom/android/contacts/model/HashRawContact;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, "temp":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 337
    iget v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    invoke-direct {p0, v10}, Lcom/android/contacts/external/DeleteDuplicatedService;->deleteOnce(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    .line 339
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 341
    const v11, 0x7f09021f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDisplayName:Ljava/lang/CharSequence;

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/contacts/external/DeleteDuplicatedService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 342
    const/4 v11, 0x0

    invoke-direct {p0, v5, v11}, Lcom/android/contacts/external/DeleteDuplicatedService;->buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v6

    .line 343
    iget-object v11, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mNotifier:Landroid/app/NotificationManager;

    const/16 v12, 0x400

    invoke-virtual {v11, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 345
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->finishOneAccount()V

    goto/16 :goto_0
.end method

.method private deleteOnce(Ljava/lang/String;)I
    .locals 5
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 274
    const-string v2, "DeleteDuplicatedContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    :goto_0
    return v0

    .line 279
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "rows":I
    const-string v2, "DeleteDuplicatedContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteSimContact(J)Z
    .locals 6
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/content/Context;J)I

    move-result v0

    .line 289
    .local v0, "subscription":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const-string v3, "DeleteDuplicatedContacts"

    const-string v4, "not ready for deleting card contact"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return v2

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSimAccountValues(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 296
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-virtual {v3, v1, v0}, Lcom/android/contacts/common/util/SimContactsOperation;->delete(Landroid/content/ContentValues;I)I

    move-result v3

    if-gtz v3, :cond_2

    .line 297
    const-string v3, "DeleteDuplicatedContacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete card("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") contact failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private finishOneAccount()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->startQuery()V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v2, "DeleteDuplicatedContacts"

    const-string v3, "Done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sput-boolean v5, Lcom/android/contacts/external/DeleteDuplicatedService;->mProcessing:Z

    .line 142
    iput v5, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mStatus:I

    .line 143
    iget v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    if-lez v2, :cond_1

    const v2, 0x7f090220

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mTotal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/external/DeleteDuplicatedService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "notifText":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0, v6}, Lcom/android/contacts/external/DeleteDuplicatedService;->buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v1

    .line 147
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mNotifier:Landroid/app/NotificationManager;

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 143
    .end local v0    # "notifText":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_1
    const v2, 0x7f090222

    invoke-virtual {p0, v2}, Lcom/android/contacts/external/DeleteDuplicatedService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getAccountDisplayName()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const v3, 0x7f090223

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    :goto_0
    return-object v2

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountManager:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 124
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const-string v2, "com.android.localphone"

    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_1
    const-string v2, "com.android.sim"

    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const/4 v1, 0x1

    .line 128
    .local v1, "subscription":I
    const-string v2, "SIM1"

    iget-object v3, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    .end local v1    # "subscription":I
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized isProcessing()Z
    .locals 2

    .prologue
    .line 115
    const-class v0, Lcom/android/contacts/external/DeleteDuplicatedService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/contacts/external/DeleteDuplicatedService;->mProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSimAccountWritable()Z
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "sub":I
    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v1

    return v1
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 157
    iput v9, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mStatus:I

    .line 159
    const-string v3, "raw_contact_id IN (SELECT raw_contact_id FROM view_data WHERE (hash_code IN (SELECT hash_code FROM (SELECT COUNT(hash_code) AS count, hash_code FROM view_data WHERE deleted=0 GROUP BY hash_code, mimetype_id, account_id) WHERE count > 1))) AND account_type=? AND account_name=?"

    .line 160
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 161
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mMode:I

    if-ne v0, v9, :cond_1

    .line 162
    const-string v0, "com.android.sim"

    iget-object v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->isSimAccountWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "DeleteDuplicatedContacts"

    const-string v1, "airplane mode on, can not del card contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 166
    :cond_0
    new-array v4, v11, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    aput-object v0, v4, v10

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 187
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->getAccountDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDisplayName:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const v1, 0x7f09021d

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mDisplayName:Ljava/lang/CharSequence;

    aput-object v9, v5, v10

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/android/contacts/external/DeleteDuplicatedService;->buildNotification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v8

    .line 190
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mNotifier:Landroid/app/NotificationManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 194
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v7}, Lcom/android/contacts/external/DeleteDuplicatedService;->check(Landroid/database/Cursor;)V

    goto :goto_0

    .line 167
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :cond_2
    const-string v3, "raw_contact_id IN (SELECT raw_contact_id FROM view_data WHERE (hash_code IN (SELECT hash_code FROM (SELECT COUNT(hash_code) AS count, hash_code FROM view_data WHERE deleted=0 GROUP BY hash_code, mimetype_id, account_id) WHERE count > 1))) AND account_type IS NULL AND account_name IS NULL"

    .line 169
    iput-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 173
    .local v6, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    .line 174
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    .line 175
    const-string v0, "DeleteDuplicatedContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acount "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "com.android.sim"

    iget-object v1, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->isSimAccountWritable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    const-string v0, "DeleteDuplicatedContacts"

    const-string v1, "airplane mode on, can not del card contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->finishOneAccount()V

    goto/16 :goto_0

    .line 182
    :cond_4
    new-array v4, v11, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    aput-object v0, v4, v10

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 183
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 89
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string v0, "DeleteDuplicatedContacts"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "com.android.contacts.intent.DELETE_DUPLICATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "DeleteDuplicatedContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    sput-boolean v2, Lcom/android/contacts/external/DeleteDuplicatedService;->mProcessing:Z

    .line 99
    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    .line 100
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iput v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mMode:I

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mNotifier:Landroid/app/NotificationManager;

    .line 109
    invoke-direct {p0}, Lcom/android/contacts/external/DeleteDuplicatedService;->startQuery()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccountManager:Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    .line 105
    const-string v0, "DeleteDuplicatedContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accounts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/external/DeleteDuplicatedService;->mAccounts:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
