.class public LS/O$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field public static final b:LS/O;


# instance fields
.field public final a:LS/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LS/O$b;

    invoke-direct {v0}, LS/O$b;-><init>()V

    invoke-virtual {v0}, LS/O$b;->a()LS/O;

    move-result-object v0

    invoke-virtual {v0}, LS/O;->a()LS/O;

    move-result-object v0

    invoke-virtual {v0}, LS/O;->b()LS/O;

    move-result-object v0

    invoke-virtual {v0}, LS/O;->c()LS/O;

    move-result-object v0

    sput-object v0, LS/O$l;->b:LS/O;

    return-void
.end method

.method public constructor <init>(LS/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/O$l;->a:LS/O;

    return-void
.end method


# virtual methods
.method public a()LS/O;
    .locals 1

    iget-object v0, p0, LS/O$l;->a:LS/O;

    return-object v0
.end method

.method public b()LS/O;
    .locals 1

    iget-object v0, p0, LS/O$l;->a:LS/O;

    return-object v0
.end method

.method public c()LS/O;
    .locals 1

    iget-object v0, p0, LS/O$l;->a:LS/O;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e(LS/O;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LS/O$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LS/O$l;

    invoke-virtual {p0}, LS/O$l;->o()Z

    move-result v1

    invoke-virtual {p1}, LS/O$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LS/O$l;->n()Z

    move-result v1

    invoke-virtual {p1}, LS/O$l;->n()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LS/O$l;->k()LJ/b;

    move-result-object v1

    invoke-virtual {p1}, LS/O$l;->k()LJ/b;

    move-result-object v3

    invoke-static {v1, v3}, LR/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LS/O$l;->i()LJ/b;

    move-result-object v1

    invoke-virtual {p1}, LS/O$l;->i()LJ/b;

    move-result-object v3

    invoke-static {v1, v3}, LR/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LS/O$l;->f()LS/g;

    move-result-object v1

    invoke-virtual {p1}, LS/O$l;->f()LS/g;

    move-result-object p1

    invoke-static {v1, p1}, LR/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()LS/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(I)LJ/b;
    .locals 0

    sget-object p1, LJ/b;->e:LJ/b;

    return-object p1
.end method

.method public h()LJ/b;
    .locals 1

    invoke-virtual {p0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, LS/O$l;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, LS/O$l;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, LS/O$l;->k()LJ/b;

    move-result-object v2

    invoke-virtual {p0}, LS/O$l;->i()LJ/b;

    move-result-object v3

    invoke-virtual {p0}, LS/O$l;->f()LS/g;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LR/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()LJ/b;
    .locals 1

    sget-object v0, LJ/b;->e:LJ/b;

    return-object v0
.end method

.method public j()LJ/b;
    .locals 1

    invoke-virtual {p0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    return-object v0
.end method

.method public k()LJ/b;
    .locals 1

    sget-object v0, LJ/b;->e:LJ/b;

    return-object v0
.end method

.method public l()LJ/b;
    .locals 1

    invoke-virtual {p0}, LS/O$l;->k()LJ/b;

    move-result-object v0

    return-object v0
.end method

.method public m(IIII)LS/O;
    .locals 0

    sget-object p1, LS/O$l;->b:LS/O;

    return-object p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p([LJ/b;)V
    .locals 0

    return-void
.end method

.method public q(LJ/b;)V
    .locals 0

    return-void
.end method

.method public r(LS/O;)V
    .locals 0

    return-void
.end method

.method public s(LJ/b;)V
    .locals 0

    return-void
.end method
