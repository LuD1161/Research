.class public abstract Lcom/google/android/gms/internal/clearcut/a0$a;
.super Lcom/google/android/gms/internal/clearcut/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final e:Lcom/google/android/gms/internal/clearcut/a0;

.field public f:Lcom/google/android/gms/internal/clearcut/a0;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/a0;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->e:Lcom/google/android/gms/internal/clearcut/a0;

    sget v0, Lcom/google/android/gms/internal/clearcut/a0$c;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/a0;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->g:Z

    return-void
.end method

.method public static m(Lcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/clearcut/a0;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/M0;->a()Lcom/google/android/gms/internal/clearcut/M0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/M0;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/R0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/R0;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->e:Lcom/google/android/gms/internal/clearcut/a0;

    sget v1, Lcom/google/android/gms/internal/clearcut/a0$c;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a0$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0$a;->i()Lcom/google/android/gms/internal/clearcut/B0;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/a0$a;->l(Lcom/google/android/gms/internal/clearcut/a0;)Lcom/google/android/gms/internal/clearcut/a0$a;

    return-object v0
.end method

.method public final synthetic h()Lcom/google/android/gms/internal/clearcut/B0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->e:Lcom/google/android/gms/internal/clearcut/a0;

    return-object v0
.end method

.method public synthetic i()Lcom/google/android/gms/internal/clearcut/B0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0$a;->o()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k(Lcom/google/android/gms/internal/clearcut/p;)Lcom/google/android/gms/internal/clearcut/q;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/a0$a;->l(Lcom/google/android/gms/internal/clearcut/a0;)Lcom/google/android/gms/internal/clearcut/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/google/android/gms/internal/clearcut/a0;)Lcom/google/android/gms/internal/clearcut/a0$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0$a;->n()V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/clearcut/a0$a;->m(Lcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/clearcut/a0;)V

    return-object p0
.end method

.method public n()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    sget v1, Lcom/google/android/gms/internal/clearcut/a0$c;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a0;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/a0$a;->m(Lcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/clearcut/a0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->g:Z

    :cond_0
    return-void
.end method

.method public o()Lcom/google/android/gms/internal/clearcut/a0;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/M0;->a()Lcom/google/android/gms/internal/clearcut/M0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/M0;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/R0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/R0;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/a0$a;->f:Lcom/google/android/gms/internal/clearcut/a0;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/clearcut/a0;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0$a;->i()Lcom/google/android/gms/internal/clearcut/B0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a0;

    sget v1, Lcom/google/android/gms/internal/clearcut/a0$c;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/M0;->a()Lcom/google/android/gms/internal/clearcut/M0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/M0;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/R0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/R0;->j(Ljava/lang/Object;)Z

    move-result v3

    sget v1, Lcom/google/android/gms/internal/clearcut/a0$c;->b:I

    if-eqz v3, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v3, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/clearcut/X0;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/X0;-><init>(Lcom/google/android/gms/internal/clearcut/B0;)V

    throw v1
.end method
