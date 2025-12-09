.class public final synthetic LM3/d$c;
.super Lv3/j;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM3/d;->l()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final n:LM3/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LM3/d$c;

    invoke-direct {v0}, LM3/d$c;-><init>()V

    sput-object v0, LM3/d$c;->n:LM3/d$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, LM3/e;

    const-string v3, "createSegment"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, LM3/f;

    invoke-virtual {p0, v0, v1, p2}, LM3/d$c;->o(JLM3/f;)LM3/f;

    move-result-object p1

    return-object p1
.end method

.method public final o(JLM3/f;)LM3/f;
    .locals 0

    invoke-static {p1, p2, p3}, LM3/e;->a(JLM3/f;)LM3/f;

    move-result-object p1

    return-object p1
.end method
