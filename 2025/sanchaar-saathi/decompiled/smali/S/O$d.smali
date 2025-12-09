.class public LS/O$d;
.super LS/O$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS/O$f;-><init>()V

    .line 2
    invoke-static {}, LS/X;->a()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LS/O;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LS/O$f;-><init>(LS/O;)V

    .line 4
    invoke-virtual {p1}, LS/O;->u()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, LS/W;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LS/X;->a()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()LS/O;
    .locals 2

    invoke-virtual {p0}, LS/O$f;->a()V

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, LS/T;->a(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LS/O;->v(Landroid/view/WindowInsets;)LS/O;

    move-result-object v0

    iget-object v1, p0, LS/O$f;->b:[LJ/b;

    invoke-virtual {v0, v1}, LS/O;->q([LJ/b;)V

    return-object v0
.end method

.method public c(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LJ/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LS/U;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LJ/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LS/Q;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LJ/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LS/S;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LJ/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LS/P;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(LJ/b;)V
    .locals 1

    iget-object v0, p0, LS/O$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LJ/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LS/V;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
