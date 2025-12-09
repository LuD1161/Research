.class public LS1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LS1/b;

.field public b:LS1/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS1/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS1/a;-><init>(LS1/g;)V

    iput-object v0, p0, LS1/a$a;->b:LS1/a;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, LS1/a$a;->a:LS1/b;

    invoke-static {v0, p1}, LS1/a;->f(LS1/a;Landroid/content/Context;)Landroid/content/Context;

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
.method public a()LS1/a;
    .locals 3

    iget-object v0, p0, LS1/a$a;->b:LS1/a;

    new-instance v1, LS1/a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LS1/a$a;->a:LS1/b;

    invoke-direct {v1, v0, v2}, LS1/a$b;-><init>(LS1/a;LS1/b;)V

    invoke-static {v0, v1}, LS1/a;->e(LS1/a;LS1/a$b;)LS1/a$b;

    iget-object v0, p0, LS1/a$a;->b:LS1/a;

    return-object v0
.end method

.method public b(Z)LS1/a$a;
    .locals 1

    iget-object v0, p0, LS1/a$a;->b:LS1/a;

    invoke-static {v0, p1}, LS1/a;->h(LS1/a;Z)Z

    return-object p0
.end method

.method public c(II)LS1/a$a;
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xf4240

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, LS1/a$a;->b:LS1/a;

    invoke-static {v0, p1}, LS1/a;->d(LS1/a;I)I

    iget-object p1, p0, LS1/a$a;->b:LS1/a;

    invoke-static {p1, p2}, LS1/a;->j(LS1/a;I)I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

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
