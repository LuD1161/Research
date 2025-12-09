.class public final LK0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:LK0/l$a;

.field public static b:Lu3/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/l$a;

    invoke-direct {v0}, LK0/l$a;-><init>()V

    sput-object v0, LK0/l$a;->a:LK0/l$a;

    sget-object v0, LK0/l$a$a;->f:LK0/l$a$a;

    sput-object v0, LK0/l$a;->b:Lu3/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LK0/l;
    .locals 2

    sget-object v0, LK0/l$a;->b:Lu3/l;

    sget-object v1, LK0/m;->b:LK0/m;

    invoke-interface {v0, v1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK0/l;

    return-object v0
.end method
