.class public final Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h$c;


# instance fields
.field public final a:Ly0/h$c;

.field public final b:Lu0/c;


# direct methods
.method public constructor <init>(Ly0/h$c;Lu0/c;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/e;->a:Ly0/h$c;

    iput-object p2, p0, Lu0/e;->b:Lu0/c;

    return-void
.end method


# virtual methods
.method public a(Ly0/h$b;)Lu0/d;
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu0/d;

    iget-object v1, p0, Lu0/e;->a:Ly0/h$c;

    invoke-interface {v1, p1}, Ly0/h$c;->create(Ly0/h$b;)Ly0/h;

    move-result-object p1

    iget-object v1, p0, Lu0/e;->b:Lu0/c;

    invoke-direct {v0, p1, v1}, Lu0/d;-><init>(Ly0/h;Lu0/c;)V

    return-object v0
.end method

.method public bridge synthetic create(Ly0/h$b;)Ly0/h;
    .locals 0

    invoke-virtual {p0, p1}, Lu0/e;->a(Ly0/h$b;)Lu0/d;

    move-result-object p1

    return-object p1
.end method
