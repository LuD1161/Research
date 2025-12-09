.class public abstract LR1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR1/s;

    invoke-direct {v0}, LR1/s;-><init>()V

    sput-object v0, LR1/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, LR1/r;

    invoke-direct {v0}, LR1/r;-><init>()V

    sput-object v0, LR1/h;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
