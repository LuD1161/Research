.class public final Lw1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw1/b;

.field public final b:Lu1/c;


# direct methods
.method public synthetic constructor <init>(Lw1/b;Lu1/c;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/x;->a:Lw1/b;

    iput-object p2, p0, Lw1/x;->b:Lu1/c;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lw1/b;
    .locals 1

    iget-object v0, p0, Lw1/x;->a:Lw1/b;

    return-object v0
.end method

.method public final synthetic b()Lu1/c;
    .locals 1

    iget-object v0, p0, Lw1/x;->b:Lu1/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lw1/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lw1/x;

    iget-object v0, p0, Lw1/x;->a:Lw1/b;

    iget-object v2, p1, Lw1/x;->a:Lw1/b;

    invoke-static {v0, v2}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/x;->b:Lu1/c;

    iget-object p1, p1, Lw1/x;->b:Lu1/c;

    invoke-static {v0, p1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lw1/x;->a:Lw1/b;

    iget-object v1, p0, Lw1/x;->b:Lu1/c;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz1/n;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lz1/n;->c(Ljava/lang/Object;)Lz1/n$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lw1/x;->a:Lw1/b;

    invoke-virtual {v0, v1, v2}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, Lw1/x;->b:Lu1/c;

    invoke-virtual {v0, v1, v2}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lz1/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
