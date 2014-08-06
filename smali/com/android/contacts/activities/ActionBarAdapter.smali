.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$1;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static show4TabsPeople:Z


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActionBarNavigationMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private final mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private mShowTabsAsText:Z

.field private mStartFromDialer:Z

.field private final mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .param p3, "actionBar"    # Landroid/app/ActionBar;
    .param p4, "isUsingTwoPanes"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStartFromDialer:Z

    .line 104
    iput v8, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 136
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 138
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 139
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 141
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    .line 142
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    .line 145
    iput-boolean p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    .line 146
    if-eqz p4, :cond_1

    .line 147
    iput v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 148
    iput-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 149
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-direct {v3, p0, v5}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "customSearchView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 161
    .local v2, "searchViewWidth":I
    if-nez v2, :cond_0

    .line 162
    const/4 v2, -0x1

    .line 164
    :cond_0
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 165
    .local v1, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    const v3, 0x7f0b0071

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 171
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 175
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 176
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 179
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 187
    :goto_1
    return-void

    .line 151
    .end local v0    # "customSearchView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/app/ActionBar$LayoutParams;
    .end local v2    # "searchViewWidth":I
    :cond_1
    iput v8, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 152
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v3, p0, v5}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 153
    iput-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_0

    .line 181
    .restart local v0    # "customSearchView":Landroid/view/View;
    .restart local v1    # "layoutParams":Landroid/app/ActionBar$LayoutParams;
    .restart local v2    # "searchViewWidth":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    goto :goto_1

    .line 184
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    goto :goto_1

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v0

    return v0
.end method

.method private addTab(III)V
    .locals 3
    .param p1, "expectedTabIndex"    # I
    .param p2, "icon"    # I
    .param p3, "description"    # I

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 273
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 274
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 281
    sget-boolean v1, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tabs must be created in the right order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 285
    :cond_2
    return-void
.end method

.method private getNavigationItemPositionFromTabPosition(I)I
    .locals 3
    .param p1, "tabPos"    # I

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inclusive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 231
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTabPositionFromNavigationItemPosition(I)I
    .locals 4
    .param p1, "navItemPos"    # I

    .prologue
    const/4 v0, 0x3

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_0
    const/4 v0, 0x2

    .line 216
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadLastTabPreference()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actionBarAdapter.lastTab"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private saveLastTabPreference(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 557
    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    return-void
.end method

.method private setupNavigationList()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040069

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/content/Context;I)V

    .line 199
    .local v0, "navAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 203
    return-void
.end method

.method private setupTabs()V
    .locals 3

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f020054

    const v2, 0x7f090053

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 191
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f020056

    const v2, 0x7f090142

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f020053

    const v2, 0x7f090141

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 193
    const/4 v0, 0x3

    const v1, 0x7f02005a

    const v2, 0x7f0900cf

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 194
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 434
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->isIconified()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 435
    .local v1, "isIconifiedChanging":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v5, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 440
    if-eqz v1, :cond_0

    .line 441
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    .line 442
    .local v2, "queryText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 443
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 444
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 447
    .end local v2    # "queryText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v4, :cond_2

    .line 451
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v4, v3}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 489
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 490
    return-void

    .end local v1    # "isIconifiedChanging":Z
    :cond_3
    move v1, v4

    .line 434
    goto :goto_0

    .line 454
    .restart local v1    # "isIconifiedChanging":Z
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    .line 456
    .local v0, "currentNavigationMode":I
    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v5, v7, :cond_9

    if-ne v0, v7, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStartFromDialer:Z

    if-eqz v5, :cond_9

    .line 466
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v3, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 467
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 468
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    sget-boolean v3, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    :goto_2
    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 469
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v4, v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 478
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    if-eqz v1, :cond_7

    .line 482
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 484
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v3, v7}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 486
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v3}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_1

    .line 468
    :cond_8
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 470
    :cond_9
    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v5, v3, :cond_6

    if-eq v0, v3, :cond_6

    .line 472
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v3, v5, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    .line 473
    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 474
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 476
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v4, v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    goto :goto_3
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 408
    const/16 v0, 0x1e

    .line 412
    .local v0, "MASK":I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 415
    .local v1, "current":I
    const/4 v2, 0x0

    .line 416
    .local v2, "newFlags":I
    or-int/lit8 v2, v2, 0x8

    .line 417
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 418
    or-int/lit8 v2, v2, 0x2

    .line 420
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_1

    .line 421
    or-int/lit8 v2, v2, 0x2

    .line 422
    or-int/lit8 v2, v2, 0x4

    .line 423
    or-int/lit8 v2, v2, 0x10

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 427
    if-eq v1, v2, :cond_2

    .line 429
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 431
    :cond_2
    return-void
.end method


# virtual methods
.method public clearFocusOnSearchView()V
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 549
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 241
    if-nez p1, :cond_2

    .line 242
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 243
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 252
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mStartFromDialer:Z

    .line 255
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void

    .line 246
    :cond_2
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 247
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 250
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 530
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 497
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    :goto_0
    return v0

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 501
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v2, :cond_2

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 509
    goto :goto_0

    .line 505
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 519
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 524
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "navBar.selectedTab"

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 322
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 3
    .param p1, "tab"    # I
    .param p2, "notifyListener"    # Z

    .prologue
    .line 328
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 333
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 334
    .local v0, "actionBarSelectedNavIndex":I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 354
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 355
    :cond_2
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0

    .line 336
    :pswitch_0
    sget-boolean v1, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-eqz v1, :cond_4

    :cond_3
    sget-boolean v1, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_1

    .line 338
    :cond_4
    sget-boolean v1, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_5

    .line 339
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 340
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onDialerTabSelected()V

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    sget-boolean v1, Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 346
    :pswitch_1
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 553
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 554
    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 269
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 374
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 375
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 376
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 384
    :cond_3
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0
.end method
