.class public Li/j;
.super Li/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/j$d;
    }
.end annotation


# static fields
.field public static final D:Landroid/view/animation/Interpolator;

.field public static final E:Landroid/view/animation/Interpolator;


# instance fields
.field public final A:LS/L;

.field public final B:LS/L;

.field public final C:LS/N;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Lp/E;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public h:Landroid/view/View;

.field public i:Ljava/util/ArrayList;

.field public j:I

.field public k:Z

.field public l:Li/j$d;

.field public m:Ln/b;

.field public n:Ln/b$a;

.field public o:Z

.field public p:Ljava/util/ArrayList;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ln/h;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Li/j;->D:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Li/j;->E:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/j;->i:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Li/j;->j:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/j;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Li/j;->r:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Li/j;->s:Z

    .line 7
    iput-boolean v0, p0, Li/j;->w:Z

    .line 8
    new-instance v0, Li/j$a;

    invoke-direct {v0, p0}, Li/j$a;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->A:LS/L;

    .line 9
    new-instance v0, Li/j$b;

    invoke-direct {v0, p0}, Li/j$b;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->B:LS/L;

    .line 10
    new-instance v0, Li/j$c;

    invoke-direct {v0, p0}, Li/j$c;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->C:LS/N;

    .line 11
    iput-object p1, p0, Li/j;->c:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Li/j;->D(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Li/j;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Li/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/j;->i:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Li/j;->j:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/j;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Li/j;->r:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Li/j;->s:Z

    .line 22
    iput-boolean v0, p0, Li/j;->w:Z

    .line 23
    new-instance v0, Li/j$a;

    invoke-direct {v0, p0}, Li/j$a;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->A:LS/L;

    .line 24
    new-instance v0, Li/j$b;

    invoke-direct {v0, p0}, Li/j$b;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->B:LS/L;

    .line 25
    new-instance v0, Li/j$c;

    invoke-direct {v0, p0}, Li/j$c;-><init>(Li/j;)V

    iput-object v0, p0, Li/j;->C:LS/N;

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/j;->D(Landroid/view/View;)V

    return-void
.end method

.method public static w(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Landroid/view/View;)Lp/E;
    .locals 3

    instance-of v0, p1, Lp/E;

    if-eqz v0, :cond_0

    check-cast p1, Lp/E;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lp/E;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0}, Lp/E;->r()I

    move-result v0

    return v0
.end method

.method public final C()V
    .locals 2

    iget-boolean v0, p0, Li/j;->v:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/j;->v:Z

    iget-object v1, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Li/j;->M(Z)V

    :cond_1
    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 5

    sget v0, Lh/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    sget v0, Lh/f;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/j;->A(Landroid/view/View;)Lp/E;

    move-result-object v0

    iput-object v0, p0, Li/j;->f:Lp/E;

    sget v0, Lh/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lh/f;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Li/j;->f:Lp/E;

    if-eqz v0, :cond_7

    iget-object v1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lp/E;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Li/j;->a:Landroid/content/Context;

    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1}, Lp/E;->p()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, Li/j;->k:Z

    :cond_2
    iget-object v2, p0, Li/j;->a:Landroid/content/Context;

    invoke-static {v2}, Ln/a;->b(Landroid/content/Context;)Ln/a;

    move-result-object v2

    invoke-virtual {v2}, Ln/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Li/j;->J(Z)V

    invoke-virtual {v2}, Ln/a;->e()Z

    move-result p1

    invoke-virtual {p0, p1}, Li/j;->H(Z)V

    iget-object p1, p0, Li/j;->a:Landroid/content/Context;

    sget-object v2, Lh/j;->a:[I

    sget v3, Lh/a;->c:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lh/j;->k:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Li/j;->I(Z)V

    :cond_5
    sget v0, Lh/j;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Li/j;->G(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Li/j;->F(II)V

    return-void
.end method

.method public F(II)V
    .locals 2

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0}, Lp/E;->p()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Li/j;->k:Z

    :cond_0
    iget-object v1, p0, Li/j;->f:Lp/E;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Lp/E;->o(I)V

    return-void
.end method

.method public G(F)V
    .locals 1

    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, LS/C;->n0(Landroid/view/View;F)V

    return-void
.end method

.method public final H(Z)V
    .locals 4

    iput-boolean p1, p0, Li/j;->q:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v0}, Lp/E;->k(Landroidx/appcompat/widget/c;)V

    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/c;)V

    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v0}, Lp/E;->k(Landroidx/appcompat/widget/c;)V

    :goto_0
    invoke-virtual {p0}, Li/j;->B()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iget-object v0, p0, Li/j;->f:Lp/E;

    iget-boolean v3, p0, Li/j;->q:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-interface {v0, v3}, Lp/E;->v(Z)V

    iget-object v0, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Li/j;->q:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public I(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Li/j;->z:Z

    iget-object v0, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public J(Z)V
    .locals 1

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0, p1}, Lp/E;->m(Z)V

    return-void
.end method

.method public final K()Z
    .locals 1

    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, LS/C;->M(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final L()V
    .locals 2

    iget-boolean v0, p0, Li/j;->v:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/j;->v:Z

    iget-object v1, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/j;->M(Z)V

    :cond_1
    return-void
.end method

.method public final M(Z)V
    .locals 3

    iget-boolean v0, p0, Li/j;->t:Z

    iget-boolean v1, p0, Li/j;->u:Z

    iget-boolean v2, p0, Li/j;->v:Z

    invoke-static {v0, v1, v2}, Li/j;->w(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/j;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/j;->w:Z

    invoke-virtual {p0, p1}, Li/j;->z(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Li/j;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/j;->w:Z

    invoke-virtual {p0, p1}, Li/j;->y(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Li/j;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/j;->u:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/j;->M(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Li/j;->x:Ln/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/j;->x:Ln/h;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Li/j;->r:I

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Li/j;->s:Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Li/j;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/j;->u:Z

    invoke-virtual {p0, v0}, Li/j;->M(Z)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Li/j;->f:Lp/E;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp/E;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0}, Lp/E;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(Z)V
    .locals 1

    iget-boolean v0, p0, Li/j;->o:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Li/j;->o:Z

    iget-object p1, p0, Li/j;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Li/j;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0}, Lp/E;->p()I

    move-result v0

    return v0
.end method

.method public k()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Li/j;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Li/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lh/a;->e:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Li/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Li/j;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/j;->a:Landroid/content/Context;

    iput-object v0, p0, Li/j;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Li/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method public m(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Li/j;->a:Landroid/content/Context;

    invoke-static {p1}, Ln/a;->b(Landroid/content/Context;)Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->e()Z

    move-result p1

    invoke-virtual {p0, p1}, Li/j;->H(Z)V

    return-void
.end method

.method public o(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Li/j;->l:Li/j$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Li/j$d;->e()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public r(Z)V
    .locals 1

    iget-boolean v0, p0, Li/j;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Li/j;->E(Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Li/j;->y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Li/j;->x:Ln/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ln/h;->a()V

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Li/j;->f:Lp/E;

    invoke-interface {v0, p1}, Lp/E;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Ln/b$a;)Ln/b;
    .locals 2

    iget-object v0, p0, Li/j;->l:Li/j$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/j$d;->c()V

    :cond_0
    iget-object v0, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    new-instance v0, Li/j$d;

    iget-object v1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Li/j$d;-><init>(Li/j;Landroid/content/Context;Ln/b$a;)V

    invoke-virtual {v0}, Li/j$d;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Li/j;->l:Li/j$d;

    invoke-virtual {v0}, Li/j$d;->k()V

    iget-object p1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Ln/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Li/j;->v(Z)V

    iget-object p1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/j;->L()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li/j;->C()V

    :goto_0
    invoke-virtual {p0}, Li/j;->K()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_1

    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v2, v6, v7}, Lp/E;->s(IJ)LS/K;

    move-result-object p1

    iget-object v0, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)LS/K;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v3, v4, v5}, Lp/E;->s(IJ)LS/K;

    move-result-object v0

    iget-object p1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)LS/K;

    move-result-object p1

    :goto_1
    new-instance v1, Ln/h;

    invoke-direct {v1}, Ln/h;-><init>()V

    invoke-virtual {v1, p1, v0}, Ln/h;->d(LS/K;LS/K;)Ln/h;

    invoke-virtual {v1}, Ln/h;->h()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v2}, Lp/E;->j(I)V

    iget-object p1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Li/j;->f:Lp/E;

    invoke-interface {p1, v3}, Lp/E;->j(I)V

    iget-object p1, p0, Li/j;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Li/j;->n:Ln/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/j;->m:Ln/b;

    invoke-interface {v0, v1}, Ln/b$a;->c(Ln/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li/j;->m:Ln/b;

    iput-object v0, p0, Li/j;->n:Ln/b$a;

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 4

    iget-object v0, p0, Li/j;->x:Ln/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln/h;->a()V

    :cond_0
    iget v0, p0, Li/j;->r:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Li/j;->y:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Ln/h;

    invoke-direct {v0}, Ln/h;-><init>()V

    iget-object v2, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iget-object v3, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object p1

    invoke-virtual {p1, v2}, LS/K;->m(F)LS/K;

    move-result-object p1

    iget-object v1, p0, Li/j;->C:LS/N;

    invoke-virtual {p1, v1}, LS/K;->k(LS/N;)LS/K;

    invoke-virtual {v0, p1}, Ln/h;->c(LS/K;)Ln/h;

    iget-boolean p1, p0, Li/j;->s:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Li/j;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-static {p1}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object p1

    invoke-virtual {p1, v2}, LS/K;->m(F)LS/K;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln/h;->c(LS/K;)Ln/h;

    :cond_3
    sget-object p1, Li/j;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Ln/h;->f(Landroid/view/animation/Interpolator;)Ln/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Ln/h;->e(J)Ln/h;

    iget-object p1, p0, Li/j;->A:LS/L;

    invoke-virtual {v0, p1}, Ln/h;->g(LS/L;)Ln/h;

    iput-object v0, p0, Li/j;->x:Ln/h;

    invoke-virtual {v0}, Ln/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Li/j;->A:LS/L;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LS/L;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public z(Z)V
    .locals 4

    iget-object v0, p0, Li/j;->x:Ln/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln/h;->a()V

    :cond_0
    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Li/j;->r:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Li/j;->y:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    filled-new-array {v1, v1}, [I

    move-result-object p1

    iget-object v1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Ln/h;

    invoke-direct {p1}, Ln/h;-><init>()V

    iget-object v1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object v1

    invoke-virtual {v1, v2}, LS/K;->m(F)LS/K;

    move-result-object v1

    iget-object v3, p0, Li/j;->C:LS/N;

    invoke-virtual {v1, v3}, LS/K;->k(LS/N;)LS/K;

    invoke-virtual {p1, v1}, Ln/h;->c(LS/K;)Ln/h;

    iget-boolean v1, p0, Li/j;->s:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Li/j;->h:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Li/j;->h:Landroid/view/View;

    invoke-static {v0}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object v0

    invoke-virtual {v0, v2}, LS/K;->m(F)LS/K;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln/h;->c(LS/K;)Ln/h;

    :cond_3
    sget-object v0, Li/j;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Ln/h;->f(Landroid/view/animation/Interpolator;)Ln/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Ln/h;->e(J)Ln/h;

    iget-object v0, p0, Li/j;->B:LS/L;

    invoke-virtual {p1, v0}, Ln/h;->g(LS/L;)Ln/h;

    iput-object p1, p0, Li/j;->x:Ln/h;

    invoke-virtual {p1}, Ln/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Li/j;->s:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Li/j;->h:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Li/j;->B:LS/L;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LS/L;->b(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Li/j;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    :cond_6
    return-void
.end method
