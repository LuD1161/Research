.class public LS/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS/O$k;,
        LS/O$l;,
        LS/O$j;,
        LS/O$i;,
        LS/O$h;,
        LS/O$g;,
        LS/O$m;,
        LS/O$b;,
        LS/O$a;,
        LS/O$n;,
        LS/O$e;,
        LS/O$d;,
        LS/O$c;,
        LS/O$f;
    }
.end annotation


# static fields
.field public static final b:LS/O;


# instance fields
.field public final a:LS/O$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, LS/O$k;->q:LS/O;

    sput-object v0, LS/O;->b:LS/O;

    goto :goto_0

    :cond_0
    sget-object v0, LS/O$l;->b:LS/O;

    sput-object v0, LS/O;->b:LS/O;

    :goto_0
    return-void
.end method

.method public constructor <init>(LS/O;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p1, LS/O;->a:LS/O$l;

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, LS/O$k;

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, LS/O$k;

    move-object v1, p1

    check-cast v1, LS/O$k;

    invoke-direct {v0, p0, v1}, LS/O$k;-><init>(LS/O;LS/O$k;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 10
    instance-of v0, p1, LS/O$j;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, LS/O$j;

    move-object v1, p1

    check-cast v1, LS/O$j;

    invoke-direct {v0, p0, v1}, LS/O$j;-><init>(LS/O;LS/O$j;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, LS/O$i;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, LS/O$i;

    move-object v1, p1

    check-cast v1, LS/O$i;

    invoke-direct {v0, p0, v1}, LS/O$i;-><init>(LS/O;LS/O$i;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p1, LS/O$h;

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, LS/O$h;

    move-object v1, p1

    check-cast v1, LS/O$h;

    invoke-direct {v0, p0, v1}, LS/O$h;-><init>(LS/O;LS/O$h;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, LS/O$g;

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, LS/O$g;

    move-object v1, p1

    check-cast v1, LS/O$g;

    invoke-direct {v0, p0, v1}, LS/O$g;-><init>(LS/O;LS/O$g;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, LS/O$l;

    invoke-direct {v0, p0}, LS/O$l;-><init>(LS/O;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    .line 19
    :goto_0
    invoke-virtual {p1, p0}, LS/O$l;->e(LS/O;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, LS/O$l;

    invoke-direct {p1, p0}, LS/O$l;-><init>(LS/O;)V

    iput-object p1, p0, LS/O;->a:LS/O$l;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, LS/O$k;

    invoke-direct {v0, p0, p1}, LS/O$k;-><init>(LS/O;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LS/O$j;

    invoke-direct {v0, p0, p1}, LS/O$j;-><init>(LS/O;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, LS/O$i;

    invoke-direct {v0, p0, p1}, LS/O$i;-><init>(LS/O;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LS/O;->a:LS/O$l;

    :goto_0
    return-void
.end method

.method public static n(LJ/b;IIII)LJ/b;
    .locals 5

    iget v0, p0, LJ/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LJ/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, LJ/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, LJ/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, LJ/b;->b(IIII)LJ/b;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/view/WindowInsets;)LS/O;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, LS/O;->w(Landroid/view/WindowInsets;Landroid/view/View;)LS/O;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/view/WindowInsets;Landroid/view/View;)LS/O;
    .locals 1

    new-instance v0, LS/O;

    invoke-static {p0}, LR/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, LS/O;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, LS/C;->C(Landroid/view/View;)LS/O;

    move-result-object p0

    invoke-virtual {v0, p0}, LS/O;->s(LS/O;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, LS/O;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()LS/O;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->a()LS/O;

    move-result-object v0

    return-object v0
.end method

.method public b()LS/O;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->b()LS/O;

    move-result-object v0

    return-object v0
.end method

.method public c()LS/O;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->c()LS/O;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()LS/g;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->f()LS/g;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LS/O;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LS/O;

    iget-object v0, p0, LS/O;->a:LS/O$l;

    iget-object p1, p1, LS/O;->a:LS/O$l;

    invoke-static {v0, p1}, LR/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)LJ/b;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->g(I)LJ/b;

    move-result-object p1

    return-object p1
.end method

.method public g()LJ/b;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->h()LJ/b;

    move-result-object v0

    return-object v0
.end method

.method public h()LJ/b;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->i()LJ/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LS/O$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    iget v0, v0, LJ/b;->d:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    iget v0, v0, LJ/b;->a:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    iget v0, v0, LJ/b;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    iget v0, v0, LJ/b;->b:I

    return v0
.end method

.method public m(IIII)LS/O;
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1, p2, p3, p4}, LS/O$l;->m(IIII)LS/O;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0}, LS/O$l;->n()Z

    move-result v0

    return v0
.end method

.method public p(IIII)LS/O;
    .locals 1

    new-instance v0, LS/O$b;

    invoke-direct {v0, p0}, LS/O$b;-><init>(LS/O;)V

    invoke-static {p1, p2, p3, p4}, LJ/b;->b(IIII)LJ/b;

    move-result-object p1

    invoke-virtual {v0, p1}, LS/O$b;->c(LJ/b;)LS/O$b;

    move-result-object p1

    invoke-virtual {p1}, LS/O$b;->a()LS/O;

    move-result-object p1

    return-object p1
.end method

.method public q([LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->p([LJ/b;)V

    return-void
.end method

.method public r(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->q(LJ/b;)V

    return-void
.end method

.method public s(LS/O;)V
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->r(LS/O;)V

    return-void
.end method

.method public t(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O;->a:LS/O$l;

    invoke-virtual {v0, p1}, LS/O$l;->s(LJ/b;)V

    return-void
.end method

.method public u()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, LS/O;->a:LS/O$l;

    instance-of v1, v0, LS/O$g;

    if-eqz v1, :cond_0

    check-cast v0, LS/O$g;

    iget-object v0, v0, LS/O$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
