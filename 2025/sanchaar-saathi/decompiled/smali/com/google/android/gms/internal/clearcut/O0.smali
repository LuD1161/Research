.class public final Lcom/google/android/gms/internal/clearcut/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/z0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/B0;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/clearcut/P0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/B0;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/O0;->a:Lcom/google/android/gms/internal/clearcut/B0;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/O0;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/P0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/P0;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->b(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/clearcut/a0$c;->i:I

    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/clearcut/a0$c;->j:I

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->b(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/clearcut/B0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->a:Lcom/google/android/gms/internal/clearcut/B0;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->j(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/clearcut/P0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->d(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->e(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->w(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->x(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final j()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->y(Lcom/google/android/gms/internal/clearcut/P0;)[I

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->z(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O0;->c:Lcom/google/android/gms/internal/clearcut/P0;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/P0;->A(Lcom/google/android/gms/internal/clearcut/P0;)I

    move-result v0

    return v0
.end method
