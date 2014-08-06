.class Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/model/account/BaseAccountType$1;

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 869
    if-nez p0, :cond_0

    .line 870
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    const-string v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 887
    .local v13, "displayOrderPrimary":Z
    const-string v2, "supportsDisplayName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v18

    .line 888
    .local v18, "supportsDisplayName":Z
    const-string v2, "supportsPrefix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v23

    .line 889
    .local v23, "supportsPrefix":Z
    const-string v2, "supportsMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v19

    .line 890
    .local v19, "supportsMiddleName":Z
    const-string v2, "supportsSuffix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v24

    .line 891
    .local v24, "supportsSuffix":Z
    const-string v2, "supportsPhoneticFamilyName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v20

    .line 893
    .local v20, "supportsPhoneticFamilyName":Z
    const-string v2, "supportsPhoneticMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v22

    .line 895
    .local v22, "supportsPhoneticMiddleName":Z
    const-string v2, "supportsPhoneticGivenName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v21

    .line 899
    .local v21, "supportsPhoneticGivenName":Z
    const-string v2, "supportsDisplayName"

    move/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 900
    const-string v2, "supportsPrefix"

    move/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 901
    const-string v2, "supportsMiddleName"

    move/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 902
    const-string v2, "supportsSuffix"

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 903
    const-string v2, "supportsPhoneticFamilyName"

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 904
    const-string v2, "supportsPhoneticMiddleName"

    move/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 905
    const-string v2, "supportsPhoneticGivenName"

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 907
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 910
    .local v15, "kinds":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataKind;>;"
    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/name"

    const/4 v8, 0x0

    const v9, 0x7f090047

    const/4 v10, -0x1

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f090047

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v17

    .line 915
    .local v17, "ks":Lcom/android/contacts/common/model/dataitem/DataKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 916
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f090049

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f09004c

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f09004b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f09004d

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f09004a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f09004e

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f090052

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f090051

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f090050

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    const/4 v6, 0x1

    const-string v7, "#displayName"

    const/4 v8, 0x0

    const v9, 0x7f090047

    const/4 v10, -0x1

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f090047

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 948
    .local v14, "kd":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v2, 0x1

    iput v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 949
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f090049

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    if-nez v13, :cond_0

    .line 955
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f09004c

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f09004b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f09004d

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f09004a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f09004e

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :goto_0
    const/4 v6, 0x1

    const-string v7, "#phoneticName"

    const/4 v8, 0x0

    const v9, 0x7f09004f

    const/4 v10, -0x1

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f090047

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v16

    .line 984
    .local v16, "kp":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 985
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "#phoneticName"

    const v5, 0x7f09004f

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f090052

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f090051

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f090050

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    return-object v15

    .line 966
    .end local v16    # "kp":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_0
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f09004c

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f09004a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f09004d

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f09004b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f09004e

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
