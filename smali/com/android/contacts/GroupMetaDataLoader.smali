.class public final Lcom/android/contacts/GroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMetaDataLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "group_custom_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # J
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 59
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-static {p2}, Lcom/android/contacts/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND deleted = 0"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid group Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    return-object p0
.end method
