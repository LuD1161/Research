.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lv1/a;

.field public final c:Lv1/a$d;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv1/a;Lv1/a$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/b;->b:Lv1/a;

    iput-object p2, p0, Lw1/b;->c:Lv1/a$d;

    iput-object p3, p0, Lw1/b;->d:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lz1/n;->b([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw1/b;->a:I

    return-void
.end method

.method public static a(Lv1/a;Lv1/a$d;Ljava/lang/String;)Lw1/b;
    .locals 1

    new-instance v0, Lw1/b;

    invoke-direct {v0, p0, p1, p2}, Lw1/b;-><init>(Lv1/a;Lv1/a$d;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw1/b;->b:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lw1/b;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lw1/b;

    iget-object v2, p0, Lw1/b;->b:Lv1/a;

    iget-object v3, p1, Lw1/b;->b:Lv1/a;

    invoke-static {v2, v3}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lw1/b;->c:Lv1/a$d;

    iget-object v3, p1, Lw1/b;->c:Lv1/a$d;

    invoke-static {v2, v3}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lw1/b;->d:Ljava/lang/String;

    iget-object p1, p1, Lw1/b;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lw1/b;->a:I

    return v0
.end method
