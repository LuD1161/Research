.class public final Lc0/p$a;
.super Lc0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lu3/p;

.field public final b:LD3/u;

.field public final c:Lc0/v;

.field public final d:Ll3/i;


# direct methods
.method public constructor <init>(Lu3/p;LD3/u;Lc0/v;Ll3/i;)V
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ack"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc0/p;-><init>(Lv3/g;)V

    iput-object p1, p0, Lc0/p$a;->a:Lu3/p;

    iput-object p2, p0, Lc0/p$a;->b:LD3/u;

    iput-object p3, p0, Lc0/p$a;->c:Lc0/v;

    iput-object p4, p0, Lc0/p$a;->d:Ll3/i;

    return-void
.end method


# virtual methods
.method public final a()LD3/u;
    .locals 1

    iget-object v0, p0, Lc0/p$a;->b:LD3/u;

    return-object v0
.end method

.method public final b()Ll3/i;
    .locals 1

    iget-object v0, p0, Lc0/p$a;->d:Ll3/i;

    return-object v0
.end method

.method public c()Lc0/v;
    .locals 1

    iget-object v0, p0, Lc0/p$a;->c:Lc0/v;

    return-object v0
.end method

.method public final d()Lu3/p;
    .locals 1

    iget-object v0, p0, Lc0/p$a;->a:Lu3/p;

    return-object v0
.end method
