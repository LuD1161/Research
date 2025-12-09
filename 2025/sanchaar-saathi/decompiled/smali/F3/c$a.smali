.class public final synthetic LF3/c$a;
.super Lv3/j;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/c;->y()LA3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final n:LF3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF3/c$a;

    invoke-direct {v0}, LF3/c$a;-><init>()V

    sput-object v0, LF3/c$a;->n:LF3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, LF3/c;

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

    check-cast p2, LF3/j;

    invoke-virtual {p0, v0, v1, p2}, LF3/c$a;->o(JLF3/j;)LF3/j;

    move-result-object p1

    return-object p1
.end method

.method public final o(JLF3/j;)LF3/j;
    .locals 0

    invoke-static {p1, p2, p3}, LF3/c;->c(JLF3/j;)LF3/j;

    move-result-object p1

    return-object p1
.end method
