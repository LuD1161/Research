.class public abstract LS/O$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:LS/O;

.field public b:[LJ/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, LS/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS/O;-><init>(LS/O;)V

    invoke-direct {p0, v0}, LS/O$f;-><init>(LS/O;)V

    return-void
.end method

.method public constructor <init>(LS/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LS/O$f;->a:LS/O;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LS/O$f;->b:[LJ/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, LS/O$m;->d(I)I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, LS/O$f;->b:[LJ/b;

    const/4 v3, 0x2

    invoke-static {v3}, LS/O$m;->d(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, LS/O$f;->a:LS/O;

    invoke-virtual {v2, v3}, LS/O;->f(I)LJ/b;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, LS/O$f;->a:LS/O;

    invoke-virtual {v0, v1}, LS/O;->f(I)LJ/b;

    move-result-object v0

    :cond_1
    invoke-static {v0, v2}, LJ/b;->a(LJ/b;LJ/b;)LJ/b;

    move-result-object v0

    invoke-virtual {p0, v0}, LS/O$f;->f(LJ/b;)V

    iget-object v0, p0, LS/O$f;->b:[LJ/b;

    const/16 v1, 0x10

    invoke-static {v1}, LS/O$m;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, LS/O$f;->e(LJ/b;)V

    :cond_2
    iget-object v0, p0, LS/O$f;->b:[LJ/b;

    const/16 v1, 0x20

    invoke-static {v1}, LS/O$m;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, LS/O$f;->c(LJ/b;)V

    :cond_3
    iget-object v0, p0, LS/O$f;->b:[LJ/b;

    const/16 v1, 0x40

    invoke-static {v1}, LS/O$m;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, LS/O$f;->g(LJ/b;)V

    :cond_4
    return-void
.end method

.method public abstract b()LS/O;
.end method

.method public c(LJ/b;)V
    .locals 0

    return-void
.end method

.method public abstract d(LJ/b;)V
.end method

.method public e(LJ/b;)V
    .locals 0

    return-void
.end method

.method public abstract f(LJ/b;)V
.end method

.method public g(LJ/b;)V
    .locals 0

    return-void
.end method
