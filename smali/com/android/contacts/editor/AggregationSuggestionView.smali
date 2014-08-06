.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/LinearLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

.field private mContactId:J

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mNewContact:Z

.field private mRawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 76
    invoke-static {p1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 77
    return-void
.end method

.method private canEditSuggestedContact()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    iget-boolean v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    if-nez v8, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v6

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 125
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 126
    .local v4, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-object v0, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 127
    .local v0, "accountType":Ljava/lang/String;
    iget-object v2, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    .line 128
    .local v2, "dataSet":Ljava/lang/String;
    if-nez v0, :cond_3

    move v6, v7

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v5

    .line 132
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 9
    .param p1, "suggestion"    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .prologue
    .line 84
    iget-wide v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iput-wide v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    .line 85
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    .line 86
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    iput-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 87
    const v6, 0x7f0b002b

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 88
    .local v4, "photo":Landroid/widget/ImageView;
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    array-length v8, v8

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :goto_0
    const v6, 0x7f0b0029

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 102
    .local v3, "name":Landroid/widget/TextView;
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v6, 0x7f0b002a

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "data":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 106
    .local v1, "dataText":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 107
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    .line 113
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void

    .line 92
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v1    # "dataText":Ljava/lang/String;
    .end local v3    # "name":Landroid/widget/TextView;
    :cond_1
    iget-wide v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 93
    .local v2, "lookupUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/util/ColorfulPhotoUtils;->getPhotoResId(Landroid/net/Uri;)I

    move-result v5

    .line 94
    .local v5, "photoResId":I
    if-lez v5, :cond_2

    .line 95
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 97
    :cond_2
    const v6, 0x7f02002d

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    .end local v2    # "lookupUri":Landroid/net/Uri;
    .end local v5    # "photoResId":I
    .restart local v0    # "data":Landroid/widget/TextView;
    .restart local v1    # "dataText":Ljava/lang/String;
    .restart local v3    # "name":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 109
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_4
    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 111
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public handleItemClickEvent()Z
    .locals 7

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->canEditSuggestedContact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;)V

    .line 155
    :goto_0
    const/4 v3, 0x1

    .line 157
    :goto_1
    return v3

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 151
    .local v1, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-wide v3, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    .end local v1    # "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onJoinAction(JLjava/util/List;)V

    goto :goto_0

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 142
    return-void
.end method

.method public setNewContact(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    .line 81
    return-void
.end method
