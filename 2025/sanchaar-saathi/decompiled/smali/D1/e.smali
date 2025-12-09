.class public LD1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD1/c;


# static fields
.field public static final a:LD1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD1/e;

    invoke-direct {v0}, LD1/e;-><init>()V

    sput-object v0, LD1/e;->a:LD1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LD1/c;
    .locals 1

    sget-object v0, LD1/e;->a:LD1/e;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
