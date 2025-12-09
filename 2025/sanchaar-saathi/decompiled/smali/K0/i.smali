.class public final LK0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK0/f;


# instance fields
.field public final b:LK0/l;

.field public final c:LL0/a;


# direct methods
.method public constructor <init>(LK0/l;LL0/a;)V
    .locals 1

    const-string v0, "windowMetricsCalculator"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackend"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/i;->b:LK0/l;

    iput-object p2, p0, LK0/i;->c:LL0/a;

    return-void
.end method

.method public static final synthetic b(LK0/i;)LL0/a;
    .locals 0

    iget-object p0, p0, LK0/i;->c:LL0/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)LG3/d;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK0/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LK0/i$a;-><init>(LK0/i;Landroid/app/Activity;Ll3/e;)V

    invoke-static {v0}, LG3/f;->c(Lu3/p;)LG3/d;

    move-result-object p1

    invoke-static {}, LD3/V;->c()LD3/z0;

    move-result-object v0

    invoke-static {p1, v0}, LG3/f;->k(LG3/d;Ll3/i;)LG3/d;

    move-result-object p1

    return-object p1
.end method
