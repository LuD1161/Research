.class public abstract LH3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LH3/o$a;->n:LH3/o$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lv3/z;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/q;

    sput-object v0, LH3/o;->a:Lu3/q;

    return-void
.end method

.method public static final synthetic a()Lu3/q;
    .locals 1

    sget-object v0, LH3/o;->a:Lu3/q;

    return-object v0
.end method
