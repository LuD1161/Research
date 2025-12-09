.class public Lv3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lv3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/c$a;

    invoke-direct {v0}, Lv3/c$a;-><init>()V

    sput-object v0, Lv3/c$a;->e:Lv3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lv3/c$a;
    .locals 1

    sget-object v0, Lv3/c$a;->e:Lv3/c$a;

    return-object v0
.end method
