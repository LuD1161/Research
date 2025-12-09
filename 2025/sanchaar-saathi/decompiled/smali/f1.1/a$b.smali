.class public Lf1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LS1/b;

.field public b:Lf1/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS1/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf1/a;-><init>(Lf1/a$a;)V

    iput-object v0, p0, Lf1/a$b;->b:Lf1/a;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lf1/a$b;->a:LS1/b;

    invoke-static {v0, p1}, Lf1/a;->a(Lf1/a;Landroid/content/Context;)Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No detector supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lf1/a;
    .locals 4

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    new-instance v1, Lf1/a$d;

    iget-object v2, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lf1/a$b;->a:LS1/b;

    invoke-direct {v1, v2, v3}, Lf1/a$d;-><init>(Lf1/a;LS1/b;)V

    invoke-static {v0, v1}, Lf1/a;->m(Lf1/a;Lf1/a$d;)Lf1/a$d;

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    return-object v0
.end method

.method public b(I)Lf1/a$b;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v0, p1}, Lf1/a;->k(Lf1/a;I)I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lf1/a$b;
    .locals 1

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v0, p1}, Lf1/a;->h(Lf1/a;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lf1/a$b;
    .locals 1

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v0, p1}, Lf1/a;->g(Lf1/a;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public e(F)Lf1/a$b;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v0, p1}, Lf1/a;->c(Lf1/a;F)F

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(II)Lf1/a$b;
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xf4240

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {v0, p1}, Lf1/a;->i(Lf1/a;I)I

    iget-object p1, p0, Lf1/a$b;->b:Lf1/a;

    invoke-static {p1, p2}, Lf1/a;->j(Lf1/a;I)I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid preview size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
