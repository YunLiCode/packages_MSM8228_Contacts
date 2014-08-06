.class public Lcom/android/contacts/editor/StructuredNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "StructuredNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$1;,
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method private eraseFullName(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setDisplayName(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private eraseStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 4
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 187
    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 188
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private rebuildFullName(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 3
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->valuesToStructuredNameMap(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/util/Map;

    move-result-object v1

    .line 181
    .local v1, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setDisplayName(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private rebuildStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 5
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 196
    .local v3, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "field":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private switchFromFullNameToStructuredName()V
    .locals 9

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    .line 118
    .local v6, "values":Lcom/android/contacts/common/model/ValuesDelta;
    iget-boolean v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-nez v7, :cond_0

    .line 119
    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 120
    .local v2, "field":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v7}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 128
    .local v5, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    invoke-direct {p0, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseFullName(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 130
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .restart local v2    # "field":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildFullName(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 136
    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v7}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 137
    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v7}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 138
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v5    # "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private switchFromStructuredNameToFullName()V
    .locals 7

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 148
    .local v4, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {p0, v4}, Lcom/android/contacts/editor/StructuredNameEditorView;->valuesToStructuredNameMap(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/util/Map;

    move-result-object v3

    .line 149
    .local v3, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    iget-boolean v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-eqz v5, :cond_0

    .line 154
    invoke-direct {p0, v4}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 157
    :cond_0
    const-string v5, "data1"

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 161
    iget-object v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->setDisplayName(Ljava/lang/String;)V

    .line 162
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "field":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1    # "field":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private valuesToStructuredNameMap(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/util/Map;
    .locals 6
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v4, "structuredNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 170
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildFullName(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 99
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->notifyEditorListener()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildStructuredName(Lcom/android/contacts/common/model/ValuesDelta;)V

    goto :goto_1
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromFullNameToStructuredName()V

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onOptionalFieldVisibilityChange()V

    .line 113
    return-void

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromStructuredNameToFullName()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v3, 0x0

    .line 233
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    .line 234
    .local v1, "ss":Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-object v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 236
    iget-boolean v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 238
    iget-object v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    if-nez v2, :cond_0

    .line 239
    iput-object v3, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    invoke-static {v2}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object v0

    .line 244
    .local v0, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    instance-of v2, v0, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-eqz v2, :cond_1

    .line 245
    check-cast v0, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    .end local v0    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    iput-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    goto :goto_0

    .line 247
    .restart local v0    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    :cond_1
    iput-object v3, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 222
    .local v0, "state":Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 224
    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    .line 228
    :cond_0
    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValue(ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 69
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    iput-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    .line 72
    invoke-virtual {p2}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    goto :goto_0
.end method
