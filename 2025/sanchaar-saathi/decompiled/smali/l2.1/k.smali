.class public Ll2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/k$c;,
        Ll2/k$b;
    }
.end annotation


# static fields
.field public static final m:Ll2/c;


# instance fields
.field public a:Ll2/d;

.field public b:Ll2/d;

.field public c:Ll2/d;

.field public d:Ll2/d;

.field public e:Ll2/c;

.field public f:Ll2/c;

.field public g:Ll2/c;

.field public h:Ll2/c;

.field public i:Ll2/f;

.field public j:Ll2/f;

.field public k:Ll2/f;

.field public l:Ll2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll2/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Ll2/i;-><init>(F)V

    sput-object v0, Ll2/k;->m:Ll2/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ll2/h;->b()Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->a:Ll2/d;

    .line 17
    invoke-static {}, Ll2/h;->b()Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->b:Ll2/d;

    .line 18
    invoke-static {}, Ll2/h;->b()Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->c:Ll2/d;

    .line 19
    invoke-static {}, Ll2/h;->b()Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->d:Ll2/d;

    .line 20
    new-instance v0, Ll2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll2/a;-><init>(F)V

    iput-object v0, p0, Ll2/k;->e:Ll2/c;

    .line 21
    new-instance v0, Ll2/a;

    invoke-direct {v0, v1}, Ll2/a;-><init>(F)V

    iput-object v0, p0, Ll2/k;->f:Ll2/c;

    .line 22
    new-instance v0, Ll2/a;

    invoke-direct {v0, v1}, Ll2/a;-><init>(F)V

    iput-object v0, p0, Ll2/k;->g:Ll2/c;

    .line 23
    new-instance v0, Ll2/a;

    invoke-direct {v0, v1}, Ll2/a;-><init>(F)V

    iput-object v0, p0, Ll2/k;->h:Ll2/c;

    .line 24
    invoke-static {}, Ll2/h;->c()Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->i:Ll2/f;

    .line 25
    invoke-static {}, Ll2/h;->c()Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->j:Ll2/f;

    .line 26
    invoke-static {}, Ll2/h;->c()Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->k:Ll2/f;

    .line 27
    invoke-static {}, Ll2/h;->c()Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->l:Ll2/f;

    return-void
.end method

.method public constructor <init>(Ll2/k$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ll2/k$b;->a(Ll2/k$b;)Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->a:Ll2/d;

    .line 4
    invoke-static {p1}, Ll2/k$b;->e(Ll2/k$b;)Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->b:Ll2/d;

    .line 5
    invoke-static {p1}, Ll2/k$b;->f(Ll2/k$b;)Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->c:Ll2/d;

    .line 6
    invoke-static {p1}, Ll2/k$b;->g(Ll2/k$b;)Ll2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->d:Ll2/d;

    .line 7
    invoke-static {p1}, Ll2/k$b;->h(Ll2/k$b;)Ll2/c;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->e:Ll2/c;

    .line 8
    invoke-static {p1}, Ll2/k$b;->i(Ll2/k$b;)Ll2/c;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->f:Ll2/c;

    .line 9
    invoke-static {p1}, Ll2/k$b;->j(Ll2/k$b;)Ll2/c;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->g:Ll2/c;

    .line 10
    invoke-static {p1}, Ll2/k$b;->k(Ll2/k$b;)Ll2/c;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->h:Ll2/c;

    .line 11
    invoke-static {p1}, Ll2/k$b;->l(Ll2/k$b;)Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->i:Ll2/f;

    .line 12
    invoke-static {p1}, Ll2/k$b;->b(Ll2/k$b;)Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->j:Ll2/f;

    .line 13
    invoke-static {p1}, Ll2/k$b;->c(Ll2/k$b;)Ll2/f;

    move-result-object v0

    iput-object v0, p0, Ll2/k;->k:Ll2/f;

    .line 14
    invoke-static {p1}, Ll2/k$b;->d(Ll2/k$b;)Ll2/f;

    move-result-object p1

    iput-object p1, p0, Ll2/k;->l:Ll2/f;

    return-void
.end method

.method public synthetic constructor <init>(Ll2/k$b;Ll2/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll2/k;-><init>(Ll2/k$b;)V

    return-void
.end method

.method public static a()Ll2/k$b;
    .locals 1

    new-instance v0, Ll2/k$b;

    invoke-direct {v0}, Ll2/k$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Ll2/k$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ll2/k;->c(Landroid/content/Context;III)Ll2/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;III)Ll2/k$b;
    .locals 1

    new-instance v0, Ll2/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Ll2/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Ll2/k;->d(Landroid/content/Context;IILl2/c;)Ll2/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;IILl2/c;)Ll2/k$b;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_0
    sget-object p2, LV1/j;->v3:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, LV1/j;->w3:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, LV1/j;->z3:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, LV1/j;->A3:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, LV1/j;->y3:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, LV1/j;->x3:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, LV1/j;->B3:I

    invoke-static {p0, v2, p3}, Ll2/k;->m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;

    move-result-object p3

    sget v2, LV1/j;->E3:I

    invoke-static {p0, v2, p3}, Ll2/k;->m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;

    move-result-object v2

    sget v3, LV1/j;->F3:I

    invoke-static {p0, v3, p3}, Ll2/k;->m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;

    move-result-object v3

    sget v4, LV1/j;->D3:I

    invoke-static {p0, v4, p3}, Ll2/k;->m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;

    move-result-object v4

    sget v5, LV1/j;->C3:I

    invoke-static {p0, v5, p3}, Ll2/k;->m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;

    move-result-object p3

    new-instance v5, Ll2/k$b;

    invoke-direct {v5}, Ll2/k$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Ll2/k$b;->y(ILl2/c;)Ll2/k$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Ll2/k$b;->C(ILl2/c;)Ll2/k$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Ll2/k$b;->u(ILl2/c;)Ll2/k$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Ll2/k$b;->q(ILl2/c;)Ll2/k$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Ll2/k$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ll2/k;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Ll2/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Ll2/k$b;
    .locals 1

    new-instance v0, Ll2/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Ll2/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Ll2/k;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILl2/c;)Ll2/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILl2/c;)Ll2/k$b;
    .locals 1

    sget-object v0, LV1/j;->J2:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, LV1/j;->K2:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, LV1/j;->L2:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Ll2/k;->d(Landroid/content/Context;IILl2/c;)Ll2/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/res/TypedArray;ILl2/c;)Ll2/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Ll2/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Ll2/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Ll2/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Ll2/i;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Ll2/f;
    .locals 1

    iget-object v0, p0, Ll2/k;->k:Ll2/f;

    return-object v0
.end method

.method public i()Ll2/d;
    .locals 1

    iget-object v0, p0, Ll2/k;->d:Ll2/d;

    return-object v0
.end method

.method public j()Ll2/c;
    .locals 1

    iget-object v0, p0, Ll2/k;->h:Ll2/c;

    return-object v0
.end method

.method public k()Ll2/d;
    .locals 1

    iget-object v0, p0, Ll2/k;->c:Ll2/d;

    return-object v0
.end method

.method public l()Ll2/c;
    .locals 1

    iget-object v0, p0, Ll2/k;->g:Ll2/c;

    return-object v0
.end method

.method public n()Ll2/f;
    .locals 1

    iget-object v0, p0, Ll2/k;->l:Ll2/f;

    return-object v0
.end method

.method public o()Ll2/f;
    .locals 1

    iget-object v0, p0, Ll2/k;->j:Ll2/f;

    return-object v0
.end method

.method public p()Ll2/f;
    .locals 1

    iget-object v0, p0, Ll2/k;->i:Ll2/f;

    return-object v0
.end method

.method public q()Ll2/d;
    .locals 1

    iget-object v0, p0, Ll2/k;->a:Ll2/d;

    return-object v0
.end method

.method public r()Ll2/c;
    .locals 1

    iget-object v0, p0, Ll2/k;->e:Ll2/c;

    return-object v0
.end method

.method public s()Ll2/d;
    .locals 1

    iget-object v0, p0, Ll2/k;->b:Ll2/d;

    return-object v0
.end method

.method public t()Ll2/c;
    .locals 1

    iget-object v0, p0, Ll2/k;->f:Ll2/c;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Ll2/k;->l:Ll2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ll2/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/k;->j:Ll2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/k;->i:Ll2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/k;->k:Ll2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Ll2/k;->e:Ll2/c;

    invoke-interface {v1, p1}, Ll2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Ll2/k;->f:Ll2/c;

    invoke-interface {v4, p1}, Ll2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Ll2/k;->h:Ll2/c;

    invoke-interface {v4, p1}, Ll2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Ll2/k;->g:Ll2/c;

    invoke-interface {v4, p1}, Ll2/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v1, p0, Ll2/k;->b:Ll2/d;

    instance-of v1, v1, Ll2/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll2/k;->a:Ll2/d;

    instance-of v1, v1, Ll2/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll2/k;->c:Ll2/d;

    instance-of v1, v1, Ll2/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll2/k;->d:Ll2/d;

    instance-of v1, v1, Ll2/j;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public v()Ll2/k$b;
    .locals 1

    new-instance v0, Ll2/k$b;

    invoke-direct {v0, p0}, Ll2/k$b;-><init>(Ll2/k;)V

    return-object v0
.end method

.method public w(F)Ll2/k;
    .locals 1

    invoke-virtual {p0}, Ll2/k;->v()Ll2/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll2/k$b;->o(F)Ll2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Ll2/k$b;->m()Ll2/k;

    move-result-object p1

    return-object p1
.end method

.method public x(Ll2/c;)Ll2/k;
    .locals 1

    invoke-virtual {p0}, Ll2/k;->v()Ll2/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll2/k$b;->p(Ll2/c;)Ll2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Ll2/k$b;->m()Ll2/k;

    move-result-object p1

    return-object p1
.end method

.method public y(Ll2/k$c;)Ll2/k;
    .locals 2

    invoke-virtual {p0}, Ll2/k;->v()Ll2/k$b;

    move-result-object v0

    invoke-virtual {p0}, Ll2/k;->r()Ll2/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ll2/k$c;->a(Ll2/c;)Ll2/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll2/k$b;->B(Ll2/c;)Ll2/k$b;

    move-result-object v0

    invoke-virtual {p0}, Ll2/k;->t()Ll2/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ll2/k$c;->a(Ll2/c;)Ll2/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll2/k$b;->F(Ll2/c;)Ll2/k$b;

    move-result-object v0

    invoke-virtual {p0}, Ll2/k;->j()Ll2/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ll2/k$c;->a(Ll2/c;)Ll2/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll2/k$b;->t(Ll2/c;)Ll2/k$b;

    move-result-object v0

    invoke-virtual {p0}, Ll2/k;->l()Ll2/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ll2/k$c;->a(Ll2/c;)Ll2/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll2/k$b;->x(Ll2/c;)Ll2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Ll2/k$b;->m()Ll2/k;

    move-result-object p1

    return-object p1
.end method
