.class public LS/O$j;
.super LS/O$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public n:LJ/b;

.field public o:LJ/b;

.field public p:LJ/b;


# direct methods
.method public constructor <init>(LS/O;LS/O$j;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, LS/O$i;-><init>(LS/O;LS/O$i;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LS/O$j;->n:LJ/b;

    .line 7
    iput-object p1, p0, LS/O$j;->o:LJ/b;

    .line 8
    iput-object p1, p0, LS/O$j;->p:LJ/b;

    return-void
.end method

.method public constructor <init>(LS/O;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LS/O$i;-><init>(LS/O;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, LS/O$j;->n:LJ/b;

    .line 3
    iput-object p1, p0, LS/O$j;->o:LJ/b;

    .line 4
    iput-object p1, p0, LS/O$j;->p:LJ/b;

    return-void
.end method


# virtual methods
.method public h()LJ/b;
    .locals 1

    iget-object v0, p0, LS/O$j;->o:LJ/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LS/a0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LJ/b;->d(Landroid/graphics/Insets;)LJ/b;

    move-result-object v0

    iput-object v0, p0, LS/O$j;->o:LJ/b;

    :cond_0
    iget-object v0, p0, LS/O$j;->o:LJ/b;

    return-object v0
.end method

.method public j()LJ/b;
    .locals 1

    iget-object v0, p0, LS/O$j;->n:LJ/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LS/b0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LJ/b;->d(Landroid/graphics/Insets;)LJ/b;

    move-result-object v0

    iput-object v0, p0, LS/O$j;->n:LJ/b;

    :cond_0
    iget-object v0, p0, LS/O$j;->n:LJ/b;

    return-object v0
.end method

.method public l()LJ/b;
    .locals 1

    iget-object v0, p0, LS/O$j;->p:LJ/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LS/Y;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LJ/b;->d(Landroid/graphics/Insets;)LJ/b;

    move-result-object v0

    iput-object v0, p0, LS/O$j;->p:LJ/b;

    :cond_0
    iget-object v0, p0, LS/O$j;->p:LJ/b;

    return-object v0
.end method

.method public m(IIII)LS/O;
    .locals 1

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, LS/Z;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, LS/O;->v(Landroid/view/WindowInsets;)LS/O;

    move-result-object p1

    return-object p1
.end method

.method public s(LJ/b;)V
    .locals 0

    return-void
.end method
