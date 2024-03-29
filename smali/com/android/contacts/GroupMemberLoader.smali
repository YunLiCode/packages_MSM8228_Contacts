.class public final Lcom/android/contacts/GroupMemberLoader;
.super Landroid/content/CursorLoader;
.source "GroupMemberLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;,
        Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;
    }
.end annotation


# instance fields
.field private final mGroupId:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # J
    .param p4, "projection"    # [Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 91
    iput-wide p2, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    .line 92
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setUri(Landroid/net/Uri;)V

    .line 93
    invoke-virtual {p0, p4}, Lcom/android/contacts/GroupMemberLoader;->setProjection([Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelection(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "prefs":Lcom/android/contacts/common/preference/ContactsPreferences;
    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 99
    const-string v1, "sort_key"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v1, "sort_key_alt"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static constructLoaderForGroupDetailQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J

    .prologue
    .line 86
    new-instance v0, Lcom/android/contacts/GroupMemberLoader;

    # getter for: Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/contacts/GroupMemberLoader;-><init>(Landroid/content/Context;J[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructLoaderForGroupEditorQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J

    .prologue
    .line 78
    new-instance v0, Lcom/android/contacts/GroupMemberLoader;

    # getter for: Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/contacts/GroupMemberLoader;-><init>(Landroid/content/Context;J[Ljava/lang/String;)V

    return-object v0
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "mimetype=? AND data1=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-wide v1, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private createUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 106
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 109
    return-object v0
.end method
