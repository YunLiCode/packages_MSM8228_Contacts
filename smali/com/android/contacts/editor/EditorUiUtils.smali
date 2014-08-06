.class public Lcom/android/contacts/editor/EditorUiUtils;
.super Ljava/lang/Object;
.source "EditorUiUtils.java"


# static fields
.field private static final mimetypeLayoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    const-string v1, "#phoneticName"

    const v2, 0x7f04006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/name"

    const v2, 0x7f040081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const v2, 0x7f04003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutResourceId(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v1, Lcom/android/contacts/editor/EditorUiUtils;->mimetypeLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 75
    const v1, 0x7f040082

    .line 77
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
