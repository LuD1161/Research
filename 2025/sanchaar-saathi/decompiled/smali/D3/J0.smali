.class public final LD3/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LD3/J0;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD3/J0;

    invoke-direct {v0}, LD3/J0;-><init>()V

    sput-object v0, LD3/J0;->a:LD3/J0;

    new-instance v0, LI3/F;

    const-string v1, "ThreadLocalEventLoop"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LI3/K;->a(LI3/F;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, LD3/J0;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LD3/Z;
    .locals 1

    sget-object v0, LD3/J0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD3/Z;

    return-object v0
.end method

.method public final b()LD3/Z;
    .locals 2

    sget-object v0, LD3/J0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD3/Z;

    if-nez v1, :cond_0

    invoke-static {}, LD3/c0;->a()LD3/Z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 2

    sget-object v0, LD3/J0;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(LD3/Z;)V
    .locals 1

    sget-object v0, LD3/J0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
