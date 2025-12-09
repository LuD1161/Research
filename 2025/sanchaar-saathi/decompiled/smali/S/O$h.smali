.class public LS/O$h;
.super LS/O$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public m:LJ/b;


# direct methods
.method public constructor <init>(LS/O;LS/O$h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LS/O$g;-><init>(LS/O;LS/O$g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LS/O$h;->m:LJ/b;

    .line 5
    iget-object p1, p2, LS/O$h;->m:LJ/b;

    iput-object p1, p0, LS/O$h;->m:LJ/b;

    return-void
.end method

.method public constructor <init>(LS/O;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LS/O$g;-><init>(LS/O;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, LS/O$h;->m:LJ/b;

    return-void
.end method


# virtual methods
.method public b()LS/O;
    .locals 1

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LS/O;->v(Landroid/view/WindowInsets;)LS/O;

    move-result-object v0

    return-object v0
.end method

.method public c()LS/O;
    .locals 1

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LS/O;->v(Landroid/view/WindowInsets;)LS/O;

    move-result-object v0

    return-object v0
.end method

.method public final i()LJ/b;
    .locals 4

    iget-object v0, p0, LS/O$h;->m:LJ/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LJ/b;->b(IIII)LJ/b;

    move-result-object v0

    iput-object v0, p0, LS/O$h;->m:LJ/b;

    :cond_0
    iget-object v0, p0, LS/O$h;->m:LJ/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public s(LJ/b;)V
    .locals 0

    iput-object p1, p0, LS/O$h;->m:LJ/b;

    return-void
.end method
