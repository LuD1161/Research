.class public Lw1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lw1/k;

.field public b:Z

.field public c:[Lu1/c;

.field public d:I


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw1/n$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lw1/n$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Lw1/n;
    .locals 4

    iget-object v0, p0, Lw1/n$a;->a:Lw1/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lz1/o;->b(ZLjava/lang/Object;)V

    new-instance v0, Lw1/N;

    iget-object v1, p0, Lw1/n$a;->c:[Lu1/c;

    iget-boolean v2, p0, Lw1/n$a;->b:Z

    iget v3, p0, Lw1/n$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lw1/N;-><init>(Lw1/n$a;[Lu1/c;ZI)V

    return-object v0
.end method

.method public b(Lw1/k;)Lw1/n$a;
    .locals 0

    iput-object p1, p0, Lw1/n$a;->a:Lw1/k;

    return-object p0
.end method

.method public c(Z)Lw1/n$a;
    .locals 0

    iput-boolean p1, p0, Lw1/n$a;->b:Z

    return-object p0
.end method

.method public varargs d([Lu1/c;)Lw1/n$a;
    .locals 0

    iput-object p1, p0, Lw1/n$a;->c:[Lu1/c;

    return-object p0
.end method

.method public final synthetic e()Lw1/k;
    .locals 1

    iget-object v0, p0, Lw1/n$a;->a:Lw1/k;

    return-object v0
.end method
