.class public Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
.super Landroid/database/CursorWrapper;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinContactLoaderResult"
.end annotation


# instance fields
.field public final rawContactsCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestionCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "baseCursor"    # Landroid/database/Cursor;
    .param p2, "suggestionCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "rawContactsCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 55
    iput-object p2, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    .line 56
    iput-object p3, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->rawContactsCountMap:Ljava/util/HashMap;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    throw v0
.end method
