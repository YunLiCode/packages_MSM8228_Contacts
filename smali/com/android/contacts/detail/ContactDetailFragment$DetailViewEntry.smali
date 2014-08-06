.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field private mIsInSubSection:Z

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public secondaryActionDescription:I

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public textDirection:I

.field public thirdActionDescription:I

.field public thirdActionIcon:I

.field public thirdIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1366
    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1311
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1316
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1317
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    .line 1320
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1321
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1322
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1323
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    .line 1324
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1325
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    .line 1327
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1328
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    .line 1331
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    .line 1333
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1334
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1336
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1367
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1368
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/contacts/model/dataitem/DataItem;
    .param p2, "isDirectoryEntry"    # Z
    .param p3, "directoryId"    # J
    .param p5, "dataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1375
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1376
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 1377
    iput-object p0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1378
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1379
    if-eqz p2, :cond_0

    .line 1380
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1383
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1384
    invoke-virtual {p5, p0}, Lcom/android/contacts/common/model/dataitem/DataKind;->getKindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1385
    invoke-virtual {p1, p0, p5}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1387
    invoke-virtual {p1, p5}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1388
    invoke-virtual {p1, p5}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v3

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1391
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1392
    iget-object v3, p5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1393
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_1

    .line 1394
    iget-object v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1396
    iget v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1409
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    :goto_0
    return-object v0

    .line 1399
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0

    .line 1406
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_4
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;
    .param p2, "fragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 1475
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1429
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1430
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1431
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1435
    :cond_0
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1438
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1440
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1444
    :cond_1
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1449
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    .line 1451
    return-void

    .line 1444
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1309
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    return-void
.end method

.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .param p1, "isInSubSection"    # Z

    .prologue
    .line 1417
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1418
    return-void
.end method

.method public setPresence(I)V
    .locals 0
    .param p1, "presence"    # I

    .prologue
    .line 1413
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1414
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    const/4 v0, 0x0

    .line 1455
    if-nez p1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return v0

    .line 1459
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1309
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1340
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "kind"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "typeString"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "data"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "maxLines"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mimetype"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "context"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isPrimary"

    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "secondaryActionIcon"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "thirdActionIcon"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "secondaryActionDescription"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "thirdActionDescription"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "intent"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "secondaryIntent"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "thirdIntent"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ids"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "collapseCount"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "presence"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "chatCapability"

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsInSubSection"

    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
