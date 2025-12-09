.class public Lt1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/google/android/gms/internal/clearcut/E1;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public final l:Lcom/google/android/gms/internal/clearcut/M1;

.field public m:Z

.field public final synthetic n:Lt1/a;


# direct methods
.method public constructor <init>(Lt1/a;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lt1/a$a;-><init>(Lt1/a;[BLt1/a$c;)V

    return-void
.end method

.method public constructor <init>(Lt1/a;[BLt1/a$c;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lt1/a;->c(Lt1/a;)I

    move-result p3

    iput p3, p0, Lt1/a$a;->a:I

    invoke-static {p1}, Lt1/a;->e(Lt1/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lt1/a$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lt1/a;->g(Lt1/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lt1/a$a;->c:Ljava/lang/String;

    const/4 p3, 0x0

    iput-object p3, p0, Lt1/a$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lt1/a;->h(Lt1/a;)Lcom/google/android/gms/internal/clearcut/E1;

    move-result-object v0

    iput-object v0, p0, Lt1/a$a;->e:Lcom/google/android/gms/internal/clearcut/E1;

    iput-object p3, p0, Lt1/a$a;->f:Ljava/util/ArrayList;

    iput-object p3, p0, Lt1/a$a;->g:Ljava/util/ArrayList;

    iput-object p3, p0, Lt1/a$a;->h:Ljava/util/ArrayList;

    iput-object p3, p0, Lt1/a$a;->i:Ljava/util/ArrayList;

    iput-object p3, p0, Lt1/a$a;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/a$a;->k:Z

    new-instance v0, Lcom/google/android/gms/internal/clearcut/M1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/M1;-><init>()V

    iput-object v0, p0, Lt1/a$a;->l:Lcom/google/android/gms/internal/clearcut/M1;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lt1/a$a;->m:Z

    invoke-static {p1}, Lt1/a;->g(Lt1/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt1/a$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lt1/a$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lt1/a;->i(Lt1/a;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/clearcut/b;->a(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, v0, Lcom/google/android/gms/internal/clearcut/M1;->B:Z

    invoke-static {p1}, Lt1/a;->j(Lt1/a;)LD1/c;

    move-result-object p3

    invoke-interface {p3}, LD1/c;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    invoke-static {p1}, Lt1/a;->j(Lt1/a;)LD1/c;

    move-result-object p3

    invoke-interface {p3}, LD1/c;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->g:J

    invoke-static {p1}, Lt1/a;->k(Lt1/a;)Lt1/a$d;

    iget-wide v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->f:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/M1;->u:J

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/google/android/gms/internal/clearcut/M1;->q:[B

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lt1/a;[BLt1/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lt1/a$a;-><init>(Lt1/a;[B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    iget-boolean v0, p0, Lt1/a$a;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/a$a;->m:Z

    new-instance v0, Lt1/f;

    new-instance v10, Lcom/google/android/gms/internal/clearcut/X1;

    iget-object v1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-static {v1}, Lt1/a;->m(Lt1/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-static {v1}, Lt1/a;->n(Lt1/a;)I

    move-result v3

    iget v4, p0, Lt1/a$a;->a:I

    iget-object v5, p0, Lt1/a$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lt1/a$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lt1/a$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-static {v1}, Lt1/a;->l(Lt1/a;)Z

    move-result v8

    iget-object v9, p0, Lt1/a$a;->e:Lcom/google/android/gms/internal/clearcut/E1;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/clearcut/X1;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/clearcut/E1;)V

    iget-object v3, p0, Lt1/a$a;->l:Lcom/google/android/gms/internal/clearcut/M1;

    const/4 v12, 0x0

    invoke-static {v12}, Lt1/a;->f(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lt1/a;->f(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v11, 0x0

    iget-boolean v13, p0, Lt1/a$a;->k:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v13

    invoke-direct/range {v1 .. v11}, Lt1/f;-><init>(Lcom/google/android/gms/internal/clearcut/X1;Lcom/google/android/gms/internal/clearcut/M1;Lt1/a$c;Lt1/a$c;[I[Ljava/lang/String;[I[[B[LO1/a;Z)V

    iget-object v1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-static {v1}, Lt1/a;->o(Lt1/a;)Lt1/a$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lt1/a$b;->a(Lt1/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt1/a$a;->n:Lt1/a;

    invoke-static {v1}, Lt1/a;->p(Lt1/a;)Lt1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lt1/c;->b(Lt1/f;)Lv1/g;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, v12}, Lv1/h;->a(Lcom/google/android/gms/common/api/Status;Lv1/f;)Lv1/g;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lt1/a$a;
    .locals 1

    iget-object v0, p0, Lt1/a$a;->l:Lcom/google/android/gms/internal/clearcut/M1;

    iput p1, v0, Lcom/google/android/gms/internal/clearcut/M1;->j:I

    return-object p0
.end method
