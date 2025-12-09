.class public final LQ0/k;
.super LQ0/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ0/k$a;,
        LQ0/k$b;
    }
.end annotation


# static fields
.field public static final e:LQ0/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ0/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ0/k$b;-><init>(Lv3/g;)V

    sput-object v0, LQ0/k;->e:LQ0/k$b;

    return-void
.end method

.method public constructor <init>(LQ0/k$a;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LQ0/u$a;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, LQ0/u$a;->g()LZ0/u;

    move-result-object v1

    invoke-virtual {p1}, LQ0/u$a;->e()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LQ0/u;-><init>(Ljava/util/UUID;LZ0/u;Ljava/util/Set;)V

    return-void
.end method

.method public static final e(Ljava/lang/Class;)LQ0/k;
    .locals 1

    sget-object v0, LQ0/k;->e:LQ0/k$b;

    invoke-virtual {v0, p0}, LQ0/k$b;->a(Ljava/lang/Class;)LQ0/k;

    move-result-object p0

    return-object p0
.end method
