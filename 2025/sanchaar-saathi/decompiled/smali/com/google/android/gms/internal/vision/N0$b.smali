.class public abstract Lcom/google/android/gms/internal/vision/N0$b;
.super Lcom/google/android/gms/internal/vision/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final e:Lcom/google/android/gms/internal/vision/N0;

.field public f:Lcom/google/android/gms/internal/vision/N0;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/N0;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/W;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/N0$b;->e:Lcom/google/android/gms/internal/vision/N0;

    sget v0, Lcom/google/android/gms/internal/vision/N0$d;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/vision/N0;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/N0;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/vision/N0;Lcom/google/android/gms/internal/vision/N0;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/vision/F1;->a()Lcom/google/android/gms/internal/vision/F1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/F1;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/K1;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic c()Lcom/google/android/gms/internal/vision/t1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->q()Lcom/google/android/gms/internal/vision/N0;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->e:Lcom/google/android/gms/internal/vision/N0;

    sget v1, Lcom/google/android/gms/internal/vision/N0$d;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/N0;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/N0$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->c()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/N0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/N0$b;->m(Lcom/google/android/gms/internal/vision/N0;)Lcom/google/android/gms/internal/vision/N0$b;

    return-object v0
.end method

.method public final synthetic h()Lcom/google/android/gms/internal/vision/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->e:Lcom/google/android/gms/internal/vision/N0;

    return-object v0
.end method

.method public final synthetic k(Lcom/google/android/gms/internal/vision/X;)Lcom/google/android/gms/internal/vision/W;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/N0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/N0$b;->m(Lcom/google/android/gms/internal/vision/N0;)Lcom/google/android/gms/internal/vision/N0$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic l([BIILcom/google/android/gms/internal/vision/A0;)Lcom/google/android/gms/internal/vision/W;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/N0$b;->o([BIILcom/google/android/gms/internal/vision/A0;)Lcom/google/android/gms/internal/vision/N0$b;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/vision/N0;)Lcom/google/android/gms/internal/vision/N0$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/N0$b;->n(Lcom/google/android/gms/internal/vision/N0;Lcom/google/android/gms/internal/vision/N0;)V

    return-object p0
.end method

.method public final o([BIILcom/google/android/gms/internal/vision/A0;)Lcom/google/android/gms/internal/vision/N0$b;
    .locals 7

    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/F1;->a()Lcom/google/android/gms/internal/vision/F1;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/F1;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    new-instance v6, Lcom/google/android/gms/internal/vision/c0;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/vision/c0;-><init>(Lcom/google/android/gms/internal/vision/A0;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/K1;->i(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/c0;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/W0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    sget v1, Lcom/google/android/gms/internal/vision/N0$d;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/N0;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/N0;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/N0$b;->n(Lcom/google/android/gms/internal/vision/N0;Lcom/google/android/gms/internal/vision/N0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    return-void
.end method

.method public q()Lcom/google/android/gms/internal/vision/N0;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    invoke-static {}, Lcom/google/android/gms/internal/vision/F1;->a()Lcom/google/android/gms/internal/vision/F1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/F1;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/K1;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/vision/N0;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->c()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/N0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/N0;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/vision/b2;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/b2;-><init>(Lcom/google/android/gms/internal/vision/t1;)V

    throw v1
.end method

.method public synthetic s()Lcom/google/android/gms/internal/vision/t1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->r()Lcom/google/android/gms/internal/vision/N0;

    move-result-object v0

    return-object v0
.end method
